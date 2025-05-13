<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Str;

use App\Models\Customer;
use App\Models\User;
use App\Models\TicketStatus;
use App\Models\Priority;
use App\Models\TicketLabel;
use App\Models\Ticket;

use Carbon\Carbon;
use Validator;
use Session;
use DB;
use Log;
use Auth;
use DataTables;


class CustomersController extends Controller
{
	
	public function index(Request $request)
	{
		$user_id=User::getVendorId();
		$login_user=User::where('id',$user_id)->first();
		$cust=Customer::orderBy('id','ASC')->paginate();
			$cust->getCollection()->transform(function ($q) {
			$cnt=Ticket::where('customer_id',$q->id)->count();
			$q['ticket_count']=$cnt;
			return $q;
		});
		
		$tk_status=TicketStatus::orderBy('id','ASC')->get();
		$priority=Priority::orderBy('id','ASC')->get();
		
		$users=User::orderBy('id','ASC')->get();
		
		$tlabel=TicketLabel::orderBy('id','ASC')->get();
	
		return view('customers.list_customers',compact('login_user','cust','tk_status','priority','users','tlabel'));
	}
	

public function viewCustomers()
{

      //$id=User::getVendorId();
	  	  
      $cust = Customer::orderby('id','DESC')->get();
	
        return Datatables::of($cust)
		->addIndexColumn()
        		
        ->addColumn('action', function ($row)
        {
			$action='<button type="button" class="btn btn-outline-light btn-icon-circle btn-icon-circle-sm font-20 dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"><i class="mdi mdi-dots-vertical"></i></button>
			<div class="dropdown-menu" style="">
				<a class="dropdown-item edit" id="'.$row->id.'" href="javascript:;" data-bs-toggle="modal" data-bs-target="#editAdditionalFieldModal"><i class="fa fa-edit"></i> Edit</a>
				<a class="dropdown-item delete" id="'.$row->id.'" href="javascript:;"><i class="fa fa-trash"></i> Delete</a>
			</div>';
			
			return $action;
        })
        ->rawColumns(['action'])
        ->make(true);
    }

// details page


public function getCustomerDetails($id)
{

	$tk_count = Ticket::selectRaw("COUNT(*) as total,
        SUM(CASE WHEN status = 2 THEN 1 ELSE 0 END) as open,
        SUM(CASE WHEN status = 3 THEN 1 ELSE 0 END) as progress,
        SUM(CASE WHEN status = 4 THEN 1 ELSE 0 END) as closed
		")->where('customer_id', $id)->first()->toArray();
	
		
	$users=User::where('status',1)->orderBy('id','ASC')->get();
	$priority=Priority::orderBy('id','ASC')->get();
	$tk_status=TicketStatus::orderBy('id','ASC')->get();
	$customer=Customer::orderBy('id','ASC')->get();
	$tlabel=TicketLabel::orderBy('id','ASC')->get();
	
	$cust=Customer::where('id',$id)->first();

	$query=Ticket::with('agent','customer','ticketLabel')
		->leftJoin('priorities','tickets.priority','=','priorities.id')
		->leftJoin('ticket_statuses','tickets.status','=','ticket_statuses.id')
		->select('tickets.*','priorities.color as priority_color','ticket_statuses.color_code as status_color')
		->where('tickets.customer_id',$id);

		$tickets=$query->orderBy('id','DESC')->paginate()
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

	return view('customers.customer_details',compact('cust','tickets','priority','tk_status','users','customer','tlabel','tk_count'));
}
 
 
}


