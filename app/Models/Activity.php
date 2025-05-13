<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Activity extends Model
{
    use HasFactory;

    public function ticket()
    {
        return $this->belongsTo(Ticket::class);
    }
    public function log()
    {
        return $this->belongsTo(Log::class);
    }
    public function task()
    {
        return $this->belongsTo(Task::class);
    }
    public function user()
    {
        return $this->belongsTo(User::class,'created_by');
    }
    public function status()
    {
        return $this->belongsTo(TicketStatus::class,'status_id');
    }
    public function priority()
    {
        return $this->belongsTo(Priority::class,'priority_id');
    }
}
