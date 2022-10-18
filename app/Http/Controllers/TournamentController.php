<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\CompetitionStatus;
use App\Models\CompetitionDsp;
use App\Models\Competition;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Builder;

class TournamentController extends Controller
{

    public function index(Request $request)
    {
        $user = auth()->user();

        $competition = CompetitionDsp::whereHas('player', function (Builder $query) use ($user) {
            $query->where('student_id', $user->detail_id);
        })
        ->whereHas('match', function (Builder $query) {
            return $query->whereIn('is_finished',['y','n']);
        })
        // ->whereHas('match', function (Builder $query) {
        //     return $query->whereHas('tournament', function (Builder $qry) {
        //         $qry->whereIn('status', [5, 6]);
        //     });
        // })
        ->get();

        $data = $competition->map(function ($item, $key) {
            return [
                'id' => $item->id,
                // 'competition_id' => $item->competition_id,
                'competition_name' => $item->match->tournament->name,
                'paguyuban_name' => $item->match->tournament->eo_paguyuban->name,
                'match_date' => Carbon::parse($item->match->date)->format('d M Y'),
                'match_location' => $item->match->field->lapangan,
                'my_team' => $item->team->name,
                'team_lawan' => ($item->participant_id == $item->match->participant1_id) ? $item->match->participant2->name : $item->match->participant1->name,
                'status' => ($item->match->is_finished == 'y') ? 'Selesai' : 'Sedang Berlangsung',
                
                // 'competition_date' => Carbon::parse($item->competition_schedule->competition_start)->format('d M Y') . ' - ' . Carbon::parse($item->competition_schedule->competition_end)->format('d M Y'),
            ];
        });

        return response()->json($data);

    }

    public function __index(Request $request)
    {
        $user = auth()->user();

        $competition = collect(Competition::all());
        $data = $competition->map(function ($item, $key) {
            return [
                'id' => $item->id,
                // 'competition_id' => $item->competition_id,
                'competition_name' => $item->name,
                'paguyuban_name' => $item->name,
                'competition_date' => Carbon::parse($item->competition_schedule->competition_start)->format('d M Y') . ' - ' . Carbon::parse($item->competition_schedule->competition_end)->format('d M Y'),
            ];
        });

        return response()->json($data);

        $competition_name = $request->competition_name;
        $data = Competition::leftJoin('competition_types', 'competition_types.id', '=', 'competitions.competition_type')
        ->select('competitions.competition_id as id', 'competitions.name', 'competition_types.name as competition_types', 'competitions.level', 'competitions.secretariat', 'competition_statuses.name as competition_status')
        ->leftJoin('competition_statuses', 'competition_statuses.id', '=', 'competitions.status')
        ->when($competition_name, function ($query, $competition_name) {
            $query->where('competitions.name', 'like', '%'.$competition_name.'%');
        })
        ->get();
        return response()->json($data);
    }

    public function _index(Request $request)
    {
        $user = auth()->user();

        $competition_name = $request->competition_name;
        $data = Competition::leftJoin('competition_types', 'competition_types.id', '=', 'competitions.competition_type')
        ->select('competitions.competition_id as id', 'competitions.name', 'competition_types.name as competition_types', 'competitions.level', 'competitions.secretariat', 'competition_statuses.name as competition_status')
        ->leftJoin('competition_statuses', 'competition_statuses.id', '=', 'competitions.status')
        ->when($competition_name, function ($query, $competition_name) {
            $query->where('competitions.name', 'like', '%'.$competition_name.'%');
        })
        ->get();
        return response()->json($data);
    }

    public function status()
    {
        $data = CompetitionStatus::where('is_deleted', 'n')->select('id', 'name')->get();
        return response()->json($data);
    }

    //
}
