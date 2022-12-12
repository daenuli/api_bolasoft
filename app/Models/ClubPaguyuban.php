<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ClubPaguyuban extends Model
{
    public function club()
    {
        return $this->belongsTo(Club::class);
    }

    public function paguyuban()
    {
        return $this->belongsTo(Paguyuban::class);
    }

    // public function student_class_active()
    // {
    //     return $this->hasMany(StudentClass::class, 'club_id', 'club_id')->where('status', 1);
    // }
}