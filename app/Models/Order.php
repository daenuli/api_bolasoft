<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $fillable = ['user_id', 'number', 'total_price', 'payment_status', 'snap_token', 'redirect_url', 'response_midtrans'];
}