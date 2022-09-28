<?php

namespace App\Http\Controllers;
use App\Models\Classes;
use Illuminate\Http\Request;

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
        if (!empty($request->club_id)) {
            $kelas = Classes::where('club_id', $request->club_id)->select('id', 'club_id', 'name_class')->get();
            return response()->json($kelas);
        } else {
            return response()->json([
                'status' => 'error',
                'message' => 'club_id field is required'
                // 'message' => 'Please select the club (ssb) before choose class(kelas)'
            ]);
        }
    }

    //
}
