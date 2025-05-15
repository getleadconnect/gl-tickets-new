<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Ticket;
use App\Models\Agent;
use App\Models\TicketStatus;
use App\Models\Priority;

use Carbon\Carbon;

class HomeController extends Controller
{
    
	public function __construct()
	{
		//code here
	}
		
	public function index()
	{
		$priority=Priority::get();
		$tk_status=TicketStatus::get();
				
		$tickets=Ticket::with('agent','customer','ticketLabel')
		->leftJoin('priorities','tickets.priority','=','priorities.id')
		->leftJoin('ticket_statuses','tickets.status','=','ticket_statuses.id')
		->select('tickets.*','priorities.color as priority_color','ticket_statuses.color_code as status_color')->orderBy('id','DESC')->paginate()
		->through(function ($ticket) {
			
			$ticket->created=date_create($ticket->created_at)->format('M d, h:i A');
			$ticket->updated_on=Carbon::parse($ticket->updated_at)->diffForHumans();
			
			if($ticket->has('agent') and !$ticket->agent->isEmpty())
			{
				$ticket->agent_first_char= substr($ticket->agent[0]->name,0,1);
				$ticket->agent_name= $ticket->agent[0]->name??'';
				$ticket->agent_id=$ticket->agent[0]->id??0;
				$ticket->agent_count=$ticket->agent->count();
			}
			else
			{
				$ticket->agent_first_char='-';
				$ticket->agent_name='';
				$ticket->agent_id=0;
				$ticket->agent_count=0;	
			}				
			return $ticket;
		});

		return view('layouts.blank',compact('tickets','priority','tk_status'));
	}
	
	
}
