<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ActivityLog extends Model
{
    protected $fillable = ['user_id', 'competition_id', 'attendance_id', 'type', 'title', 'is_read'];
}