<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Student extends Model 
{
    use SoftDeletes;
    
    public $fillable = ['email_verified_at'];

    public function students(){
        return $this->hasMany(Student::class);
    }

    public function classes(){
        return $this->hasMany(Classes::class);
    }

    public function schedules(){
        return $this->hasMany(Schedule::class)->orderBy('id', 'desc');
    }

    public function paguyuban(){
        return $this->belongsTo(Paguyuban::class);
    }

    public function users(){
        return $this->hasMany(User::class);
    }

}
