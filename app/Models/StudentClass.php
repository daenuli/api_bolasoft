<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class StudentClass extends Model
{

    public function club()
    {
        return $this->belongsTo(Club::class);
    }

    public function kelas()
    {
        return $this->belongsTo(Classes::class, 'class_id');
    }

    public function schedule()
    {
        return $this->belongsTo(Schedule::class, 'class_id', 'class_id');
    }

    public function user()
    {
        return $this->belongsTo(User::class, 'student_id', 'detail_id');
    }
}
