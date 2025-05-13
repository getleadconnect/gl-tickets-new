<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class Customer extends Model
{
    use HasFactory;
    use Notifiable ;
   
	protected $guarded=[];
   
    public function ticket()
    {
        return $this->hasMany(Ticket::class);
    }
}
