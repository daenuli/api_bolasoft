<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Classes extends Model
{
    
    protected $table = 'classes';

    // public function students(){
    //     return $this->hasMany(Student::class, 'class_id');
    // }

    // public function schedules(){
    //     return $this->hasMany(Schedule::class, 'class_id')->orderBy('id', 'desc');
    // }

    // public function get_class($id){
        
    // }
}
