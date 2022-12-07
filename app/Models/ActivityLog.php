<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ActivityLog extends Model
{
    protected $fillable = [
        'user_id', 
        'attendance_id', 
        'competition_id', 
        'schedule_id', 
        'type', 
        'title', 
        'icon', 
        'is_read'
    ];
}