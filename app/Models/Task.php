<?php

namespace App\Models;

use App\Enums\TaskStatusEnum;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Task extends Model
{
    use HasFactory;

    protected $fillable = ['id','task_name','description','created_by','ticket_id','type_id','category_id','expires_at'];
    
	protected $casts = [
        'expires_at' => 'datetime',
        'status' => TaskStatusEnum::class
    ];

    public function agent()
    {
        return $this->belongsToMany(User::class,'agent_task','task_id','agent_id');
    }
    public function user()
    {
        return $this->belongsTo(User::class,'created_by');
    }
    public function ticket()
    {
        return $this->belongsTo(Ticket::class);
    }
    public function type()
    {
        return $this->belongsTo(TaskType::class);
    }
    public function category()
    {
        return $this->belongsTo(TaskCategory::class,'category_id');
    }
    
}
