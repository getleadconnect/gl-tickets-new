<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductTicket extends Model
{
    use HasFactory;
	
	protected $guarded=[];
	
    public function product()
    {
        return $this->belongsTo(Product::class,'product_id');
    }
    public function ticket()
    {
        return $this->belongsTo(Ticket::class,'ticket_id');
    }
}
