<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Club extends Model
{

    protected $hidden = ['paguyuban_id', 'email_verified_at', 'created_at', 'updated_at', 'deleted_at'];

    public function students(){
        return $this->hasMany(Student::class);
    }

    public function paguyuban(){
        return $this->belongsTo(Paguyuban::class);
    }

    public function users(){
        return $this->hasMany(User::class);
    }

    public function events()
    {
        return $this->hasMany(Event::class);
    }

    public function coach()
    {
        return $this->hasMany(ClubCoach::class, 'club_id');
    }

}
