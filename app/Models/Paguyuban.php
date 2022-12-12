<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Paguyuban extends Model
{
    
    public function users(){
        return $this->hasMany(User::class);
    }

    public function clubs(){
        return $this->hasMany(Club::class);
    }

    public function province()
    {
        return $this->belongsTo(Province::class);
    }
}
