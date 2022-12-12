<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Province extends Model
{
    protected $table = 'indonesia_provinces';
    // protected $primaryKey = 'id_propinsi';
    // public $timestamps = false;

    public function getNameAttribute($value)
    {
        return ucwords(strtolower($value));
    }
}