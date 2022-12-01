<?php

namespace App\Http\Controllers;
use App\Models\Classes;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Builder;
use Carbon\Carbon;

class KelasController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function index(Request $request)
    {
        // $user = auth()->user();
        // if ($user->club_id > 0) {
        $student = auth()->user()->student;
        if (!empty($request->club_id)) {
            $age = Carbon::parse($student->date_of_birth)->age;
            $kelas = Classes::with('class_category')
                    ->where('status', 1)
                    ->where('club_id', $request->club_id)
                    ->whereHas('class_category', function (Builder $query) use ($age) {
                        $query->where('age', '>=', $age)->orWhere('age', 0);
                    })
                    // ->where('class_category')
                    // ->select('id', 'club_id', 'name_class')
                    // ->select('id', 'club_id', 'name_class')
                    ->get();
            $data = collect($kelas)->map(function ($item, $key) {
                        return [
                            'id' => $item->id,
                            'club_id' => $item->club_id,
                            'name_class' => $item->class_category->name,
                            'description' => $item->name_class
                        ];
                    });
            return response()->json($data);
        } else {
            return response()->json([
                'status' => 'error',
                'message' => 'club_id wajib diisi'
                // 'message' => 'Please select the club (ssb) before choose class(kelas)'
            ]);
        }
    }

    //
}
