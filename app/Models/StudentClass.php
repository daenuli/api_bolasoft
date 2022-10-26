<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class StudentClass extends Model
{
    //

    public function club()
    {
        return $this->belongsTo(Club::class);
    }

    public function kelas()
    {
        return $this->belongsTo(Classes::class, 'class_id');
    }
}