<?php

namespace App\Models;

use App\Enums\InvoiceStatusEnum;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Invoice extends Model
{
    use HasFactory;
	
	protected $guarded=[];
    
	/*protected $casts = [
        'status' => InvoiceStatusEnum::class
    ];*/
    
    public function ticket()
    {
        return $this->belongsTo(Ticket::class,'ticket_id');
    }
    public function items()
    {
        return $this->hasMany(InvoiceItem::class);
    }

}
