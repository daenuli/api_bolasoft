<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Competition extends Model
{
    public function competition_schedule()
    {
        return $this->hasOne(CompetitionSchedule::class, 'competition_id', 'competition_id');
    }

    public function eo_paguyuban()
    {
        return $this->belongsTo(Paguyuban::class, 'eo_id');
    }
}