<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MatchSchedule extends Model
{
    public function tournament()
    {
        return $this->belongsTo(Competition::class, 'competition_id', 'competition_id');
    }

    public function field()
    {
        return $this->belongsTo(CompetitionLocation::class, 'location_id');
    }

    public function participant1()
    {
        return $this->belongsTo(CompetitionParticipant::class, 'participant1_id');
    }

    public function participant2()
    {
        return $this->belongsTo(CompetitionParticipant::class, 'participant2_id');
    }
}