<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Schedule extends Model 
{
    public function class()
    {
        return $this->belongsTo(Classes::class);
    }

    public function club()
    {
        return $this->belongsTo(Club::class);
    }
}