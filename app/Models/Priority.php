<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Priority extends Model
{
    use HasFactory;
    protected $fillable = ['id','title','active'];

    public function ticket()
    {
        return $this->hasMany(Ticket::class,'priority');
    }
}
