<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\CompetitionStatus;
use App\Models\Competition;

class TournamentController extends Controller
{
    public function index(Request $request)
    {
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
