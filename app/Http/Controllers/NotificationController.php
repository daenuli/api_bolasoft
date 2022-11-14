<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\ActivityLog;
use Carbon\Carbon;

class NotificationController extends Controller
{

    public function index()
    {
        $user = auth()->user();

        $data = ActivityLog::orderBy('id', 'desc')
                ->where('user_id', $user->id)
                ->get()
                ->map(function ($item, $key) {
                    return [
                        'id' => $item->id,
                        'name' => 'System Bolasoft',
                        'type' => $item->type,
                        'message' => $item->title,
                        'date' => Carbon::parse($item->created_at)->format('F d, Y'),
                    ];
                });
        return response()->json($data);
    }

    public function _index()
    {
        $data = [
            [
                'id' => 1,
                'message' => 'Kamu telah berhasil menyelesaikan Latihan',
                'date' => 'May 1, 2022',
                'name' => 'Zidan'
            ],
            [
                'id' => 2,
                'message' => 'Kamu tidak hadir latihan, Tingkatkan yak!',
                'date' => 'May 2, 2022',
                'name' => 'Marselo'
            ],
            [
                'id' => 3,
                'message' => 'Hari ini kamu izin hadir latihan, Sampai bertemu pada latihan selanjutnya yak!',
                'date' => 'May 2, 2022',
                'name' => 'C Ronaldo'
            ],
            [
                'id' => 4,
                'message' => 'Hari ini kamu sakit. Istirahat dan jaga kesehatanmu yak!',
                'date' => 'May 2, 2022',
                'name' => 'Ihfan Adnan'
            ],
            [
                'id' => 5,
                'message' => 'Latihanmu terlalu padat. Istirahat yang cukup yak!',
                'date' => 'May 2, 2022',
                'name' => 'Toni Blank'
            ]
        ];

        return response()->json($data);
    }

}