<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CompetitionPlayer extends Model
{
    public function participant()
    {
        return $this->belongsTo(CompetitionParticipant::class, 'participant_id');
    }

    public function student()
    {
        return $this->belongsTo(Student::class);
    }
}