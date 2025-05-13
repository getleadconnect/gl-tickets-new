<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\Ticket;
use App\Models\User;
use App\Models\Priority;
use App\Models\TicketStatus;
use App\Models\Customer;
use App\Models\AgentTicket;

use App\Http\Resources\StatusReportResource;
use App\Http\Resources\PriorityReportResource;
use App\Http\Resources\TicketCollectionResource;
use App\Http\Resources\TicketStatusReportCollectionResource;
use App\Http\Requests\Api\v1\ListTicketRequest;
use App\Actions\Api\ReportListTicketsAction;


use App\Models\TicketAdditionalField;
use App\Models\AdditionalField;
use App\Models\Payment;

use DB;
use Carbon\Carbon;
use Session;
use DataTables;
Use Log;
use Auth;
use Validator;


class ReportController extends Controller
{
	
	public function __construct()
	{
		
	}
	
	public function index()
	{
		return view('reports.user_analytics');
	}

		
public function viewUsersTicketCounts()
{

      //$id=User::getVendorId();
	  	  
      $users = User::select('users.*')
	  ->orderby('id','DESC')->get()->map(function($q)
	  {
		$tk_count = AgentTicket::leftJoin('tickets','agent_ticket.agent_id','=','tickets.id')->selectRaw("COUNT(*) as total,
						SUM(CASE WHEN status = 2 THEN 1 ELSE 0 END) as open,
						SUM(CASE WHEN status = 3 THEN 1 ELSE 0 END) as progress,
						SUM(CASE WHEN status = 4 THEN 1 ELSE 0 END) as closed
						")->where('agent_ticket.agent_id', $q->id)->first()->toArray();
		
			$q['total']=$tk_count['total']??0;
			$q['open']=$tk_count['open']??0;
			$q['progress']=$tk_count['progress']??0;
			$q['closed']=$tk_count['closed']??0;
		return $q;
	  });
		
      return Datatables::of($users)
		->addIndexColumn()
        //->rawColumns()
        ->make(true);
}

//------------------------------------------------------------

public function allTicketsReport()
{
	$cust=Customer::orderBy('id','ASC')->get();
	$tstatus=TicketStatus::orderBy('id','ASC')->get();
	return view('reports.all_tickets_report',compact('cust','tstatus'));
}
	
public function viewAllTicketsReport(Request $request)  
    {

		$sdate=$request->start_date;
		$edate=$request->end_date;
		
        $query=Ticket::select('tickets.*','customers.name as customer_name','ticket_statuses.status as status_name','priorities.title as priority_name','users.name as user_name')
			->leftJoin('ticket_statuses','tickets.status','=','ticket_statuses.id')
			->leftJoin('priorities','tickets.priority','=','priorities.id')
			->leftJoin('customers','tickets.customer_id','=','customers.id')
			->leftJoin('users','tickets.created_by','=','users.id')
			
			->when($request->start_date, function ($query, $sdate) {
				return $query->whereDate('tickets.created_at','>=',$sdate);
			})
			->when($request->end_date, function ($query, $edate) {
				return $query->whereDate('tickets.created_at','<=',$edate);
			});
			
	 $tickets=$query->orderBy('id','ASC')->get();

    return Datatables::of($tickets)
		->addIndexColumn()
		
		->addColumn('createdby',function($row){
			return $row->user_name;
		})
		->addColumn('createdat',function($row){
			return Carbon::parse($row->created_at)->format('d-m-Y');
		})

        //->rawColumns()
        ->make(true);
    }


//------------------------------------------------------------
public function agentWiseReport()
{
	$agent_id=Session::get('report_agent_id')??'';
	$agents=User::orderBy('id','ASC')->get();
	return view('reports.agent_wise_report',compact('agent_id','agents'));
}
	
public function viewAgentTickets(Request $request)  
    {

		$agent_id=$request->agent_id??0;
		$sdate=$request->start_date;
		$edate=$request->end_date;
		
        $query=Ticket::select('tickets.*','customers.name as customer_name','ticket_statuses.status as status_name','priorities.title as priority_name','users.name as user_name')
			->leftJoin('ticket_statuses','tickets.status','=','ticket_statuses.id')
			->leftJoin('priorities','tickets.priority','=','priorities.id')
			->leftJoin('customers','tickets.customer_id','=','customers.id')
			->leftJoin('agent_ticket','tickets.id','=','agent_ticket.ticket_id')
			->leftJoin('users','tickets.created_by','=','users.id')
			
			->where('agent_ticket.agent_id', $agent_id)
			
			->when($request->start_date, function ($query, $sdate) {
				return $query->whereDate('tickets.created_at','>=',$sdate);
			})
			->when($request->end_date, function ($query, $edate) {
				return $query->whereDate('tickets.created_at','<=',$edate);
			});
			
	 $tickets=$query->orderBy('id','ASC')->get();

 return Datatables::of($tickets)
		->addIndexColumn()
		
		->addColumn('createdby',function($row){
			return $row->user_name;
		})
		->addColumn('createdat',function($row){
			return Carbon::parse($row->created_at)->format('d-m-Y');
		})

        //->rawColumns()
        ->make(true);
    }


//------------------------------------------------------------
public function ticketStatusWiseReport()
{
	$agents=User::orderBy('id','ASC')->get();
	$tstatus=TicketStatus::orderBy('id','ASC')->get();
	return view('reports.ticket_status_wise_report',compact('agents','tstatus'));
}
	
public function viewTicketStatusReport(Request $request)  
    {

		$status=$request->tk_status??'';
		$agent_id=$request->agent_id??0;
		$sdate=$request->start_date;
		$edate=$request->end_date;
		
        $query=Ticket::select('tickets.*','customers.name as customer_name','ticket_statuses.status as status_name','priorities.title as priority_name','users.name as user_name')
			->leftJoin('ticket_statuses','tickets.status','=','ticket_statuses.id')
			->leftJoin('priorities','tickets.priority','=','priorities.id')
			->leftJoin('customers','tickets.customer_id','=','customers.id')
			->leftJoin('agent_ticket','tickets.id','=','agent_ticket.ticket_id')
			->leftJoin('users','tickets.created_by','=','users.id')
			
			->when($request->tk_status, function ($query, $status) {
				return $query->where('tickets.status','=',$status);
			})
			->when($request->agent_id, function ($query, $agent_id) {
				return $query->where('agent_tickets.agent_id','>=',$agent_id);
			})
			
			->when($request->start_date, function ($query, $sdate) {
				return $query->whereDate('tickets.created_at','>=',$sdate);
			})
			->when($request->end_date, function ($query, $edate) {
				return $query->whereDate('tickets.created_at','<=',$edate);
			});
			
	 $tickets=$query->orderBy('id','ASC')->get();

 return Datatables::of($tickets)
		->addIndexColumn()
		
		->addColumn('createdby',function($row){
			return $row->user_name;
		})
		->addColumn('createdat',function($row){
			return Carbon::parse($row->created_at)->format('d-m-Y');
		})

        //->rawColumns()
        ->make(true);
    }
	
//------------------------------------------------------------
public function customerTicketsReport()
{
	$cust=Customer::orderBy('id','ASC')->get();
	$tstatus=TicketStatus::orderBy('id','ASC')->get();
	return view('reports.customer_tickets_report',compact('cust','tstatus'));
}
	
public function viewCustomerTicketsReport(Request $request)  
    {

		$cust_id=$request->customer_id??0;
		$sdate=$request->start_date;
		$edate=$request->end_date;
		
        $query=Ticket::select('tickets.*','customers.name as customer_name','ticket_statuses.status as status_name','priorities.title as priority_name','users.name as user_name')
			->leftJoin('ticket_statuses','tickets.status','=','ticket_statuses.id')
			->leftJoin('priorities','tickets.priority','=','priorities.id')
			->leftJoin('customers','tickets.customer_id','=','customers.id')
			->leftJoin('users','tickets.created_by','=','users.id')
			->where('tickets.customer_id', $cust_id)
			
			->when($request->start_date, function ($query, $sdate) {
				return $query->whereDate('tickets.created_at','>=',$sdate);
			})
			->when($request->end_date, function ($query, $edate) {
				return $query->whereDate('tickets.created_at','<=',$edate);
			});
			
	 $tickets=$query->orderBy('id','ASC')->get();

    return Datatables::of($tickets)
		->addIndexColumn()
		
		->addColumn('createdby',function($row){
			return $row->user_name;
		})
		->addColumn('createdat',function($row){
			return Carbon::parse($row->created_at)->format('d-m-Y');
		})

        //->rawColumns()
        ->make(true);
    }




//------------------------------------------------------------
public function paymentsReport()
{
	$cust=Customer::orderBy('id','ASC')->get();
	$tstatus=TicketStatus::orderBy('id','ASC')->get();
	return view('reports.payment_report',compact('cust','tstatus'));
}
	
public function viewPaymentsDetails(Request $request)  
    {

		$mon=$request->month??0;
		$year=$request->year??date(Y);
		$sdate=$request->start_date;
		$edate=$request->end_date;
		
        $query=Payment::select('payments.*','customers.name as customer_name','users.name as user_name')
			->leftJoin('customers','payments.customer_id','=','customers.id')
			->leftJoin('users','payments.created_by','=','users.id')

			->when($request->month, function ($query, $mon) {
				return $query->whereMonth('payments.created_at', $mon);
			})
			->when($year, function ($query, $year) {
				return $query->whereYear('payments.created_at', $year);
			})
			
			->when($request->pay_mode, function ($query, $pmode) {
				return $query->where('payments.payment_mode', $pmode);
			})

			->when($request->start_date, function ($query, $sdate) {
				return $query->whereDate('payments.created_at','>=',$sdate);
			})
			->when($request->end_date, function ($query, $edate) {
				return $query->whereDate('payments.created_at','<=',$edate);
			});
			
	 $tickets=$query->orderBy('id','ASC')->get();

    return Datatables::of($tickets)
		->addIndexColumn()
		
		->addColumn('createdby',function($row){
			return $row->user_name;
		})
		->addColumn('createdat',function($row){
			return Carbon::parse($row->created_at)->format('d-m-Y');
		})

        //->rawColumns()
        ->make(true);
    }








    /*public function countReport(Request $request)
    {  
        $status=TicketStatus::withCount(['ticket' => function($tk) use($request) {
            // Apply the agent filter
            $tk->when($request->agent, function ($query, $agent_id) {
                $query->whereHas('agent', function ($q) use ($agent_id) {
                    $q->whereIn('agent_id', $agent_id);
                });
            });
        
            // Apply the date filters
            $tk->when($request->filter_by, function ($query, $filter_by) use ($request) {
                $startDate = Carbon::now()->startOfWeek();
                $endDate = Carbon::now()->endOfWeek();
                $lastWeekStartDate = Carbon::now()->startOfWeek()->subWeek();
                $lastWeekEndDate = Carbon::now()->endOfWeek()->subWeek();
        
                $query->where(function($q) use ($filter_by, $request, $startDate, $endDate, $lastWeekStartDate, $lastWeekEndDate) {
                    switch ($filter_by) {
                        case 'yesterday':
                            $q->whereDate('created_at', Carbon::yesterday());
                            break;
                        case 'today':
                            $q->whereDate('created_at', Carbon::today());
                            break;
                        case 'this_week':
                            $q->whereBetween('created_at', [$startDate, $endDate]);
                            break;
                        case 'last_week':
                            $q->whereBetween('created_at', [$lastWeekStartDate, $lastWeekEndDate]);
                            break;
                        case 'this_month':
                            $q->whereMonth('created_at', Carbon::now()->month)
                              ->whereYear('created_at', Carbon::now()->year);
                            break;
                        case 'last_month':
                            $q->whereMonth('created_at', Carbon::now()->subMonth()->month)
                              ->whereYear('created_at', Carbon::now()->year);
                            break;
                        case 'this_year':
                            $q->whereYear('created_at', Carbon::now()->year);
                            break;
                        case 'last_30_days':
                            $q->where('created_at', '>', Carbon::now()->subDays(30)->endOfDay());
                            break;
                        case 'custom':
                            if($request->start_date && $request->end_date) {
                                $startDate = Carbon::parse($request->start_date);
                                $endDate = Carbon::parse($request->end_date);
                                $q->whereDate('due_date','>=', $startDate)->whereDate('due_date','<=', $endDate);
                                // $q->whereBetween('created_at', [$startDate, $endDate]);
                            }
                            elseif($request->start_date != null)
                            {
                                $startDate = Carbon::parse($request->start_date);
                                $q->whereDate('created_at', $startDate);
                            }
                            break;
                            
                        default:
                            // Optional: Handle other cases or default behavior
                            break;
                    }
                });
            });
        }])->where('active',1)->get();

       
        $priority=Priority::withCount(['ticket' => function($tk) use($request) {
            // Apply the agent filter
            $tk->when($request->agent, function ($query, $agent_id) {
                $query->whereHas('agent', function ($q) use ($agent_id) {
                    $q->whereIn('agent_id', $agent_id);
                });
            });
        
            // Apply the date filters
            $tk->when($request->filter_by, function ($query, $filter_by) use ($request) {
                $startDate = Carbon::now()->startOfWeek();
                $endDate = Carbon::now()->endOfWeek();
                $lastWeekStartDate = Carbon::now()->startOfWeek()->subWeek();
                $lastWeekEndDate = Carbon::now()->endOfWeek()->subWeek();
        
                $query->where(function($q) use ($filter_by, $request, $startDate, $endDate, $lastWeekStartDate, $lastWeekEndDate) {
                    switch ($filter_by) {
                        case 'yesterday':
                            $q->whereDate('created_at', Carbon::yesterday());
                            break;
                        case 'today':
                            $q->whereDate('created_at', Carbon::today());
                            break;
                        case 'this_week':
                            $q->whereBetween('created_at', [$startDate, $endDate]);
                            break;
                        case 'last_week':
                            $q->whereBetween('created_at', [$lastWeekStartDate, $lastWeekEndDate]);
                            break;
                        case 'this_month':
                            $q->whereMonth('created_at', Carbon::now()->month)
                              ->whereYear('created_at', Carbon::now()->year);
                            break;
                        case 'last_month':
                            $q->whereMonth('created_at', Carbon::now()->subMonth()->month)
                              ->whereYear('created_at', Carbon::now()->year);
                            break;
                        case 'this_year':
                            $q->whereYear('created_at', Carbon::now()->year);
                            break;
                        case 'last_30_days':
                            $q->where('created_at', '>', Carbon::now()->subDays(30)->endOfDay());
                            break;
                        case 'custom':
                            if($request->start_date && $request->end_date) {
                                $startDate = Carbon::parse($request->start_date);
                                $endDate = Carbon::parse($request->end_date);
                                $q->whereDate('created_at','>=', $startDate)->whereDate('created_at','<=', $endDate);
                                // $q->whereBetween('created_at', [$startDate, $endDate]);
                            }
                            elseif($request->start_date != null)
                            {
                                $startDate = Carbon::parse($request->start_date);
                                $q->whereDate('created_at', $startDate);
                            }
                            break;
                        default:
                            // Optional: Handle other cases or default behavior
                            break;
                    }
                });
            });
        }])->where('active',1)->get();

      
       $data=['status'=>StatusReportResource::collection($status),
              'priority'=>PriorityReportResource::collection($priority)
            ];
        return $this->sendResponse($data, ' Report retrieved successfully.');
    }


    public function priorityReport(Request $request)
    {
        $priority=Priority::where('active',1)->select('title','id')->get();

        foreach($priority as $prio)
        {
            $ticket=Ticket::latest();

            if($request->agent)
            {
                $agent=User::whereIn('id',$request->agent)->pluck('id')->toArray();
                $ticket= $ticket->whereHas('agent', function ($query) use ($agent) {
                    $query->whereIn('agent_id', $agent);
                });
            }
			
            elseif(Auth::user()->role_id==2){
                $ticket=$ticket->whereHas('agent',function($where){
                    $where->where('agent_id',Auth::user()->id);
                });
            }
			
         $prio->count=$ticket->where('priority',$prio->id)->count();
		 $agent=User::where('id',$request->agent)->first();
        }
		
		$success['agent']=$agent;
		$success['priority']=$priority;

        return $this->sendResponse($success, 'Priority report successfully.');
    }
	
	
    public function ticketStatus(Request $request)
    {
        $input = $request->all();

        $validator = Validator::make($input, [
        'agent' => 'array', 
        'status' => 'array', 
        ]);
        
        if($validator->fails()){
            return $this->sendError($validator->errors()->first(),[],422);           
        }
        $parent=User::getVendorId();
                  
        $data=User::with(['ticket' => function($tk) use($request,$parent) {
            // Apply the agent filter
            $tk->when($request->agent, function ($query, $agent_id) {
                    $query->whereIn('agent_id', $agent_id);
            });
            $tk->when(empty($request->agent) , function($query)use($parent)  {   
                $agent=User::pluck('id')->toArray();
                $query->whereIn('agent_id', $agent);
            });
            // Apply the date filters
            $tk->when($request->filter_by, function ($query, $filter_by) use ($request) {
                $startDate = Carbon::now()->startOfWeek();
                $endDate = Carbon::now()->endOfWeek();
                $lastWeekStartDate = Carbon::now()->startOfWeek()->subWeek();
                $lastWeekEndDate = Carbon::now()->endOfWeek()->subWeek();
        
                $query->where(function($q) use ($filter_by, $request, $startDate, $endDate, $lastWeekStartDate, $lastWeekEndDate) {
                    switch ($filter_by) {
                        case 'yesterday':
                            $q->whereDate('tickets.created_at', Carbon::yesterday());
                            break;
                        case 'today':
                            $q->whereDate('tickets.created_at', Carbon::today());
                            break;
                        case 'this_week':
                            $q->whereBetween('created_at', [$startDate, $endDate]);
                            break;
                        case 'last_week':
                            $q->whereBetween('tickets.created_at', [$lastWeekStartDate, $lastWeekEndDate]);
                            break;
                        case 'this_month':
                            $q->whereMonth('tickets.created_at', Carbon::now()->month)
                              ->whereYear('tickets.created_at', Carbon::now()->year);
                            break;
                        case 'last_month':
                            $q->whereMonth('tickets.created_at', Carbon::now()->subMonth()->month)
                              ->whereYear('tickets.created_at', Carbon::now()->year);
                            break;
                        case 'this_year':
                            $q->whereYear('tickets.created_at', Carbon::now()->year);
                            break;
                        case 'last_30_days':
                            $q->where('tickets.created_at', '>', Carbon::now()->subDays(30)->endOfDay());
                            break;
                        case 'custom':
                            if($request->start_date && $request->end_date) {
                                $startDate = Carbon::parse($request->start_date);
                                $endDate = Carbon::parse($request->end_date);
                                $q->whereDate('tickets.created_at','>=', $startDate)->whereDate('tickets.created_at','<=', $endDate);
                                // $q->whereBetween('tickets.created_at', [$startDate, $endDate]);
                            }
                            elseif($request->start_date != null)
                            {
                                $startDate = Carbon::parse($request->start_date);
                                $q->whereDate('created_at', $startDate);
                            }
                            break;
                        default:
                            // Optional: Handle other cases or default behavior
                            break;
                    }
                });
            });
        }]);
              
        $da= new TicketStatusReportCollectionResource($data->paginate($request->per_page));
        return $this->sendResponse($da, 'Ticket report successfully.');

    }

	//In report page click on the agent to display this details
	
	public function agentTickets(Request $request)  
    {
        $query=Ticket::select('tickets.*','customers.name as customer_name','ticket_statuses.status as status_name','priorities.title as priority_name')
			->leftJoin('ticket_statuses','tickets.status','=','ticket_statuses.id')
			->leftJoin('priorities','tickets.priority','=','priorities.id')
			->leftJoin('customers','tickets.customer_id','=','customers.id')
			->when($request->agent, function ($query, $agent_id) {
				// $agent=User::whereIn('user_id',$agent_id)->pluck('id')->toArray();
				return $query->whereHas('agent', function ($query) use ($agent_id) {
					$query->whereIn('agent_id', $agent_id);
				});
			});
			
	$tot=$query->count();
		
	 $tickets=$query->simplePaginate($request->per_page??10);
			
		$tickets->getCollection()->transform(function ($q) {
			$aft=TicketAdditionalField::where('ticket_id',$q->id)->get();
				 foreach($aft as $r)
				 {
					 $af=AdditionalField::where('id',$r->additional_field_id)->first();
					 $na=$af->name;
					 $q[$na]=$r->user_input;
				 }
				 return $q;
		});
		
        $success['tickets']=$tickets;
		
		$tot=ceil($tot/$tickets->perPage());
		$success['pagination']=[
                'count' => $tickets->count(),
                'per_page' => $tickets->perPage(),
                'current_page' =>$tickets->currentPage(),
                'total_pages' => $tot,
				'nextPageUrl'=>$tickets->nextPageUrl(),
                'previousPageUrl'=>$tickets->previousPageUrl()
            ];

        return $this->sendResponse($success, 'Agent tickets retrieved successfully.');
    }
	
	
	
	//all tickets status wise report 
		
	public function ticketStatusReport(Request $request)  
    {
            $query=Ticket::with(['agent'])->select('tickets.*','customers.name as customer_name','ticket_statuses.status as status_name','priorities.title as priority_name')
			->leftJoin('ticket_statuses','tickets.status','=','ticket_statuses.id')
			->leftJoin('priorities','tickets.priority','=','priorities.id')
			->leftJoin('customers','tickets.customer_id','=','customers.id')
			
			->when($request->search, function ($query, $search) use ($request) {
				return $query->where(function ($query) use ($search) {
					$query->where('tickets.issue', 'LIKE', '%' . $search . '%')
						->orWhere('tickets.description', 'LIKE', '%' . $search . '%')
						->orWhere('customers.name', 'LIKE', '%' . $search . '%')
						->orWhere('ticket_statuses.status', 'LIKE', '%' . $search . '%')
						->orWhere('priorities.title', 'LIKE', '%' . $search . '%');
				});
			})
			
			->when($request->priority, function ($query, $priority) use ($request) {
				 return $query->whereIn('tickets.priority', $priority);
			})
			
			->when($request->status, function ($query, $status) {
				return $query->whereIn('tickets.status', $status);
			})
			
			->when($request->agent, function ($query, $agent_id) {
				return $query->whereHas('agent', function ($query) use ($agent_id) {
					$query->whereIn('agent_id', $agent_id);
				});
			})
			
			->when($request->filter_by, function ($query, $filter_by) use ($request) {
                $startDate = Carbon::now()->startOfWeek();
                $endDate = Carbon::now()->endOfWeek();
                $lastWeekStartDate = Carbon::now()->startOfWeek()->subWeek();
                $lastWeekEndDate = Carbon::now()->endOfWeek()->subWeek();
        
                return $query->where(function($q) use ($filter_by, $request, $startDate, $endDate, $lastWeekStartDate, $lastWeekEndDate) {
                    switch ($filter_by) {
                        case 'yesterday':
                            $q->whereDate('tickets.created_at', Carbon::yesterday());
                            break;
                        case 'today':
                            $q->whereDate('tickets.created_at', Carbon::today());
                            break;
                        case 'this_week':
                            $q->whereBetween('created_at', [$startDate, $endDate]);
                            break;
                        case 'last_week':
                            $q->whereBetween('tickets.created_at', [$lastWeekStartDate, $lastWeekEndDate]);
                            break;
                        case 'this_month':
                            $q->whereMonth('tickets.created_at', Carbon::now()->month)
                              ->whereYear('tickets.created_at', Carbon::now()->year);
                            break;
                        case 'last_month':
                            $q->whereMonth('tickets.created_at', Carbon::now()->subMonth()->month)
                              ->whereYear('tickets.created_at', Carbon::now()->year);
                            break;
                        case 'this_year':
                            $q->whereYear('tickets.created_at', Carbon::now()->year);
                            break;
                        case 'last_30_days':
                            $q->where('tickets.created_at', '>', Carbon::now()->subDays(30)->endOfDay());
                            break;
                        case 'custom':
                            if($request->start_date && $request->end_date) {
                                $startDate = Carbon::parse($request->start_date);
                                $endDate = Carbon::parse($request->end_date);
                                $q->whereDate('tickets.created_at','>=', $startDate)->whereDate('tickets.created_at','<=', $endDate);
                                // $q->whereBetween('tickets.created_at', [$startDate, $endDate]);
                            }
                            elseif($request->start_date != null)
                            {
                                $startDate = Carbon::parse($request->start_date);
                                $q->whereDate('created_at', $startDate);
                            }
                            break;
                        default:
                            // Optional: Handle other cases or default behavior
                            break;
                    }
                });
            });
			
			
	$tot=$query->count();
        
    $tickets=[];
    $tickets=$query->orderBy('tickets.id','DESC')->simplePaginate();
    
    $success['tickets']=$tickets;
    $tot=ceil($tot/$tickets->perPage());
    $success['pagination']=[
            'count' => $tickets->count(),
            'per_page' => $tickets->perPage(),
            'current_page' =>$tickets->currentPage(),
            'total_pages' => $tot,
            'nextPageUrl'=>$tickets->nextPageUrl(),
            'previousPageUrl'=>$tickets->previousPageUrl()
        ];
		
        return $this->sendResponse($success, 'Agent tickets report successfully.');
    }
		
		
		
	//List ticket report
			
	public function listTicketsReport(ListTicketRequest $request, ReportListTicketsAction $listTicketsAction)
    {
        $response = $listTicketsAction->execute($request);
        
        return $this->sendResponse($response, 'Tickets retrieved successfully.');
    }
	
	
	//payments report
	
	public function paymentReport(Request $request)  
    {
			$sdate=$request->start_date;
			$edate=$request->end_date;
			$month=$request->month;
			$year=$request->year;
				

            $payment=Payment::select('payments.*','customers.name as customer_name','tickets.issue','tickets.description')
					->leftJoin('tickets','payments.ticket_id','=','tickets.id')
					->leftJoin('customers','tickets.customer_id','=','customers.id');
			
			if($sdate!='' and $edate!='')
            {
				  $edate=Carbon::parse($request->end_date)->addDays(1);
                  $payment->whereBetween('payments.created_at',[$sdate,$edate]);
            }
			else if($month!='' and $year=='')
            {
                  $payment->whereMonth('payments.created_at',$month)->whereYear('payments.created_at',date('Y'));
            }
			else if($month!='' and $year!='')
            {
                  $payment->whereMonth('payments.created_at',$month)->whereYear('payments.created_at',$year);
            }
						
			$tickets=[];
							
			$payment=$payment->orderBy('id','DESC')->get();
		
		    $success['payments']=$payment;
		
            return $this->sendResponse($success, 'Payments data retrived successfully .');
    }
	
	*/
	
	
	
	
}
