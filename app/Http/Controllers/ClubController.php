<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Student;
use App\Models\Classes;
use App\Models\Club;
use App\Models\User;

class ClubController extends Controller
{
    public function index(Request $request)
    {
        $club_name = $request->club_name;
        $province_name = $request->province_name;
        $paguyuban_name = $request->paguyuban_name;
        $data = Club::leftJoin('paguyubans', 'clubs.paguyuban_id', '=', 'paguyubans.id')
                ->leftJoin('provinces', 'paguyubans.province_id', '=', 'provinces.id_propinsi')
                ->select('clubs.id', 'provinces.nama_propinsi as province_name', 'paguyubans.name as paguyuban_name', 'clubs.name as club_name', 'clubs.telp', 'clubs.address', 'clubs.number_of_student')
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
        return response()->json($data);
    }

    public function show($id)
    {
        $data = Club::find($id);
        return response()->json($data);
    }

    public function update(Request $request)
    {
        if (!empty($request->class_id)) {
            // if (!empty($request->club_id)) {
            $student = auth()->user()->student;

            if (isset($student)) {
                $user_auth = auth()->user();
                $kelas = Classes::find($request->class_id);

                $club = Club::find($kelas->club_id);
                // $club = Club::find($request->club_id);
                $user = User::find($user_auth->id)->update([
                    'club_id' => $kelas->club_id,
                    // 'club_id' => $request->club_id,
                    'paguyuban_id' => $club->paguyuban_id,
                ]);

                $student = Student::find($user_auth->detail_id);
                $student->club_id = $kelas->club_id;
                $student->class_id = $request->class_id;
                $student->save();

                return response()->json([
                    'status' => 'success',
                    'message' => 'The class was successfully updated'
                ]);
            } else {
                return response()->json([
                    'status' => 'error',
                    'message' => 'Please complete the profile first'
                ]);
            }
        } else {
            return response()->json([
                'status' => 'error',
                'message' => 'class_id field is required'
            ]);
        }
    }
}