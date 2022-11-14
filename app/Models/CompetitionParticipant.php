<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CompetitionParticipant extends Model
{
    // public function competition()
    // {
    //     return $this->belongsTo(Competition::class, 'competition_id', 'competition_id');
    // }

    public function schedule()
    {
        return $this->belongsTo(CompetitionSchedule::class, 'competition_id', 'competition_id');
    }
}