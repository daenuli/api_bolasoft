<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CompetitionDsp extends Model
{
    public function team()
    {
        return $this->belongsTo(CompetitionParticipant::class, 'participant_id');
    }

    public function player()
    {
        return $this->belongsTo(CompetitionPlayer::class);
    }

    public function match()
    {
        return $this->belongsTo(MatchSchedule::class, 'match_id');
    }
}