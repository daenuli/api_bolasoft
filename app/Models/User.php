<?php

namespace App\Models;

use Illuminate\Auth\Authenticatable;
use Illuminate\Contracts\Auth\Access\Authorizable as AuthorizableContract;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Laravel\Lumen\Auth\Authorizable;
use Tymon\JWTAuth\Contracts\JWTSubject;

class User extends Model implements JWTSubject, AuthenticatableContract, AuthorizableContract
{
    use Authenticatable, Authorizable, HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */
    protected $fillable = [
        'name', 'email', 'club_id', 'paguyuban_id'
    ];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var string[]
     */
    protected $hidden = [
        'password',
    ];

    /**
     * Get the identifier that will be stored in the subject claim of the JWT.
     *
     * @return mixed
     */
    public function getJWTIdentifier()
    {
        return $this->getKey();
    }

    /**
     * Return a key value array, containing any custom claims to be added to the JWT.
     *
     * @return array
     */
    public function getJWTCustomClaims()
    {
        return [];
    }

    public function student()
    {
        return $this->belongsTo(Student::class, 'detail_id', 'id');
    }

    public function club(){
        return $this->belongsTo(Club::class, 'club_id');
    }

    public function order()
    {
        return $this->hasOne(Order::class);
    }

    public function student_class()
    {
        return $this->hasOne(StudentClass::class, 'student_id', 'detail_id')
            // ->where('status', 1);
                ->where([
                    ['status', 1],
                    ['confirm', 'accept']
                ]);
        // return $this->hasOne(StudentClass::class, 'detail_id', 'student_id')->where('status', 1);
    }

    public function student_status()
    {
        return $this->hasOne(StudentClass::class, 'student_id', 'detail_id')
            ->where('status', 1);
    }

    public function student_asset($type)
    {
        return $this->hasOne(StudentAsset::class, 'student_id', 'detail_id')
        ->where('status', $type);
    }


}
