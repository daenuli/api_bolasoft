<?php

namespace App\Http\Controllers;
use App\Models\Schedule;
use Carbon\Carbon;

class ScheduleController extends Controller
{
    public function index()
    {
        $student_class = auth()->user()->student_class;
        // $now = Carbon::now();
        // $now = Carbon::now();
        // $now = Carbon::now()->toDateString();
        // $date = Carbon::create($now->toDateString())->toDateString();
        // return ($now == $date) ? 'true' : 'false';
// dd($date->equalTo($now));
// dd(Carbon::parse('2022-10-20')->equalTo($now));
        // $user = auth()->user();
        if (!$student_class) {
            return response()->json([
                'status' => 'data_empty',
                'message' => 'Jadwal latihan belum ada'
            ]);
        }

        $jadwal = Schedule::where('class_id', $student_class->class_id)
        ->where('date', '>=', Carbon::now()->toDateTimeString())
        // ->whereDate('date', '>=', Carbon::now()->toDateString())
        ->get()->map(function ($item, $key) {
            if ($item->status == 0) {
                $status = 'cancel';
                $status_desc = 'Latihan Dibatalkan';
            } else {
                $parse = Carbon::parse($item->date)->toDateString();
                if (Carbon::parse($parse)->equalTo(Carbon::now()->toDateString())) {
                    $status = 'today';
                    $status_desc = 'Hari Ini Latihan';
                } else {
                    $status = 'soon';
                    $status_desc = 'Latihan Mendatang';
                } 
            }
            return [
                'id' => $item->id,
                'name' => $item->class->class_category->name ?? '',
                // 'name' => $item->kelas->class_category->name ?? '',
                'date' => Carbon::parse($item->date)->format('d F Y'),
                'time' => Carbon::parse($item->date)->format('H:i'),
                'stadion' => $item->club->address ?? '',
                'status' => $status ?? '',
                'status_description' => $status_desc ?? ''
            ];
        });

        return response()->json($jadwal);
    }
}