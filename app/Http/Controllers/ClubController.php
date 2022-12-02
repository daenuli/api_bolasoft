<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Student;
use App\Models\Classes;
use App\Models\Club;
use App\Models\User;
use App\Models\StudentClass;
use App\Models\ClubPaguyuban;
use Carbon\Carbon;
// use Illuminate\Support\Str;

class ClubController extends Controller
{
    // public function _index(Request $request)
    // {
    //     $user = auth()->user();
    //     $club_name = $request->club_name;
    //     $province_name = $request->province_name;
    //     $paguyuban_name = $request->paguyuban_name;

    // }

    public function index(Request $request)
    {
        $user = auth()->user();

        $club_name = $request->club_name;
        $province_name = $request->province_name;
        $paguyuban_name = $request->paguyuban_name;
        $club = Club::leftJoin('paguyubans', 'clubs.paguyuban_id', '=', 'paguyubans.id')
                ->leftJoin('provinces', 'paguyubans.province_id', '=', 'provinces.id_propinsi')
                ->select('clubs.id', 'provinces.nama_propinsi as province_name', 'paguyubans.name as paguyuban_name', 'clubs.name as club_name', 'clubs.telp', 'clubs.address', 'clubs.number_of_student', 'clubs.thumbnail_image_path')
                ->when($club_name, function ($query, $club_name) {
                    $query->where('clubs.name', 'like', '%'.$club_name.'%');
                })
                ->when($province_name, function ($query, $province_name) {
                    $query->where('provinces.nama_propinsi', 'like', '%'.$province_name.'%');
                })
                ->when($paguyuban_name, function ($query, $paguyuban_name) {
                    $query->where('paguyubans.name', 'like', '%'.$paguyuban_name.'%');
                })
                ->get();
        $data = $club->map(function ($item, $key) {
            return [
                'id' => $item->id,
                'province_name' => $item->province_name,
                'paguyuban_name' => $item->paguyuban_name,
                'club_name' => $item->club_name,
                'telp' => $item->telp,
                'address' => $item->address,
                'number_of_student' => $item->number_of_student,
                'thumbnail_image_path' => ($item->thumbnail_image_path) ? config('app.bolasoft_url').$item->thumbnail_image_path : '',
            ];
        });
        return response()->json($data);
    }

    public function show($id)
    {
        $data = Club::find($id);
        $paguyuban = ClubPaguyuban::where([
                        ['club_id', $id],
                        ['status', 1],
                        ['confirm', 'approve'],
                    ])->count();
        $club = [
            'id' => $data->id,
            'name' => $data->name,
            'telp' => $data->telp,
            'address' => $data->address,
            'latitude' => $data->latitude,
            'longitude' => $data->longitude,
            'maps' => $data->maps,
            'description' => ($data->desc) ? $data->desc : '',
            'thumbnail_image' => ($data->thumbnail_image_path) ? config('app.bolasoft_url').$data->thumbnail_image_path : '',
            'coach' => $data->coach->count() . ' pelatih',
            'association' => 'Terdaftar di '.$paguyuban.' Paguyuban',
            'number_of_student' => $data->number_of_student,
            'is_premium' => $data->is_premium,
            'images' => $data->events->map(function ($item, $key) {
                return [
                    'id' => $item->id,
                    'name' => $item->name,
                    'image_path' => config('app.bolasoft_url').$item->image_path,
                ];
            })
        ];
        return response()->json($club);
    }

    public function update(Request $request)
    {
        if (!empty($request->class_id)) {
            $user = auth()->user();
            $kelas = Classes::find($request->class_id);

            if (empty($kelas)) {
                return response()->json([
                    'status' => 'error',
                    'message' => 'Kelas tidak ditemukan'
                ]);
            }

            // $club = Club::find($kelas->club_id);
            // $user = User::find($user->id)->update([
            //     'club_id' => $kelas->club_id,
            //     'paguyuban_id' => $club->paguyuban_id,
            // ]);

            // $student = Student::find($user->detail_id);
            // $student->club_id = $kelas->club_id;
            // $student->class_id = $request->class_id;
            // $student->save();

            $SC = StudentClass::where('student_id', $user->detail_id)
                ->where('status', 1)
                ->where('confirm', 'accept')
                ->count();
            if ($SC) {
                return response()->json([
                    'status' => 'error',
                    'message' => 'Silahkan hubungi ssb sebelumnya untuk me-non-aktifkan akunnya'
                ]);
            }

            // $user = User::find($user->id);
            // $user->confirmed = 'p';
            // $user->save();

            $data = new StudentClass;
            $data->student_id = $user->detail_id;
            $data->club_id = $kelas->club_id;
            $data->class_id = $request->class_id;
            $data->status = 1;
            $data->confirm = 'waiting';
            // $data->created_at = Carbon::now()->setTimezone('Asia/Jakarta');
            // $data->updated_at = Carbon::now()->setTimezone('Asia/Jakarta');
            $data->save();

            return response()->json([
                'status' => 'success',
                'message' => 'Kelas berhasil dipilih'
            ]);
        } else {
            return response()->json([
                'status' => 'error',
                'message' => 'class_id wajib diisi'
            ]);
        }
    }

    public function history()
    {
        $user = auth()->user();

        $kelas = StudentClass::where('student_id', $user->detail_id)
        ->where('status', 0)
        ->where('confirm', 'accept')
        ->get();
        if ($kelas) {
            $data = $kelas->map(function ($item, $key) {
                return [
                    'id' => $item->id,
                    'ssb' => $item->club->name,
                    'kelas' => $item->kelas->class_category->name,
                    'date' => 'Masuk ('.Carbon::parse($item->created_at)->format('d/m/Y').') - Keluar ('.Carbon::parse($item->updated_at)->format('d/m/Y').')'
                ];
            });
            return response()->json($data);
        }
    }

    public function school_resign()
    {
        $user = auth()->user();
        StudentClass::where([
            ['student_id', $user->detail_id],
            ['status', 1],
            ['confirm', 'accept'],
        ])->update(['status' => 0]);

        return response()->json([
            'status' => 'success',
            'message' => 'Berhasil request keluar sekolah'
        ]);
    }

}