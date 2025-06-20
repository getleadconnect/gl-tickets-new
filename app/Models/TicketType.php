<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TicketType extends Model
{
    use HasFactory;

    protected $fillable =['id','type','active'];

    public function ticket()
    {
        return $this->hasMany(Ticket::class);
    }
}
