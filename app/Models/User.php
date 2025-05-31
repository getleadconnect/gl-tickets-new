<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

use Auth;

class User extends Authenticatable
{
    /** @use HasFactory<\Database\Factories\UserFactory> */
    use HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var list<string>
     */
	 
	const ACTIVATE = 1;
    const DEACTIVATE = 0;

    const ADMIN = 1;
    const AGENTS = 2;  
    const MANAGER = 3;

	 
	 
    protected $fillable = [
        'name',
        'email',
        'password',
		'role_id',
		'designation_id',
		'country_code',
		'mobile',
		'status',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var list<string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * Get the attributes that should be cast.
     *
     * @return array<string, string>
     */
    protected function casts(): array
    {
        return [
            'email_verified_at' => 'datetime',
            'password' => 'hashed',
        ];
    }
	
	public function isAdmin()
    {
        if (Auth::user()->role_id == Self::ADMIN) {
            return true;
        }
    }
	
	public function isAgent()
    {
        if (Auth::user()->role_id == Self::AGENT) {
            return true;
        }
    }
	
	public function isManager()
    {
        if (Auth::user()->role_id == Self::MANAGER) {
            return true;
        }
    }
	
	public static function getVendorId()
    {
        if(auth()->check()){
            if (Auth::user()->role_id == Self::ADMIN) {
                $vendorId = Auth::user()->id;
            } else {
                $vendorId = Auth::user()->id;
            }
            return $vendorId;
        }else{
            return null;
        }
    }

	
}
