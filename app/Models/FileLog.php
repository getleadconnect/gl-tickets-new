<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FileLog extends Model
{
    use HasFactory;

    public function log()
    {
        return $this->belongsTo(Log::class,'log_id');
    }
}
