<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TicketStatus extends Model
{
    use HasFactory;
    protected $fillable = ['id','status','active'];
    
    public function ticket()
    {
        return $this->hasMany(Ticket::class,'status');
    }
     public function stage()
    {
        return $this->belongsTo(Stage::class,'stage_id');
    }
    public function statusHistory()
    {
        return $this->hasMany(TicketStatusHistory::class,'status');
    }
}
