<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;

use App\Models\Ticket;
use App\Models\TicketStatus;
use App\Models\Priority;
use App\Models\User;
use App\Models\Customer;
use App\Models\TicketLabel;
use App\Models\Activity;
use App\Models\AgentTicket;
use App\Models\NotifyTicket;
use App\Models\TicketLogNote;
use App\Models\Task;
use App\Models\AgentTask;
use App\Models\AdditionalField;
use App\Models\TicketAdditionalField;
use App\Models\TicketStatusHistory;
use App\Models\Product;
use App\Models\ProductTicket;
use App\Models\TicketImage;
use App\Models\Branch;

use Carbon\Carbon;
use Validator;
use Session;
use DB;
use Log;
use Auth;

class TicketController extends Controller
{

		
	public function index(Request $request)
	{
			
		$users=User::where('status',1)->orderBy('id','ASC')->get();
		$priority=Priority::orderBy('id','ASC')->get();
		$tk_status=TicketStatus::orderBy('id','ASC')->get();
		$customer=Customer::orderBy('id','ASC')->get();
		$tlabel=TicketLabel::orderBy('id','ASC')->get();
						
		$query=Ticket::with('agent','customer','ticketLabel')
		->leftJoin('priorities','tickets.priority','=','priorities.id')
		->leftJoin('ticket_statuses','tickets.status','=','ticket_statuses.id')
		->select('tickets.*','priorities.color as priority_color','ticket_statuses.color_code as status_color')
		->where('tickets.status','!=',4)
		
		->when($request->flt_customer,function($query,$customer)
		{
			return $query->where('tickets.customer_id','=',$customer);
        })
		
		->when($request->flt_status,function($query,$status)
		{
			if($status=="overdue")
			{
				return $query->whereDate('tickets.due_date',"<=",date('Y-m-d'));
			}
			else
			{
				return $query->where('tickets.status','=',$status);
			}
        })
		
		->when($request->flt_start_date,function($query,$start)
		{
			return $query->whereDate('tickets.created_at',">=",$start);
        })
		->when($request->flt_end_date,function($query,$end)
		{
			return $query->whereDate('tickets.created_at',"<=",$end);
        });
				
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

		$flt=['flt_tkt_sdate'=>$request->flt_start_date,'flt_tkt_edate'=>$request->flt_end_date,'flt_tkt_status'=>$request->flt_status,'flt_tkt_cust'=>$request->flt_customer];
		Session::put($flt);
		
		$additional_field=$this->get_additonal_field();
			
		return view('tickets.tickets',compact('tickets','priority','tk_status','users','customer','tlabel','additional_field'));
	}


public function closedTickets(Request $request)
	{
		$start=$request->flt_start_date;
		$end=Carbon::parse($request->flt_end_date)->addDays(1)->format('Y-m-d');
		$customer=1;
		
		$users=User::where('status',1)->orderBy('id','ASC')->get();
		$priority=Priority::orderBy('id','ASC')->get();
		$tk_status=TicketStatus::orderBy('id','ASC')->get();
		$customer=Customer::orderBy('id','ASC')->get();
		$tlabel=TicketLabel::orderBy('id','ASC')->get();
		
				
		$query=Ticket::with('agent','customer','ticketLabel')
		->leftJoin('priorities','tickets.priority','=','priorities.id')
		->leftJoin('ticket_statuses','tickets.status','=','ticket_statuses.id')
		->select('tickets.*','priorities.color as priority_color','ticket_statuses.color_code as status_color')
		->where('tickets.status',4)
		->when($request->flt_customer,function($query,$customer)
		{
			return $query->where('tickets.customer_id','=',$customer);
        })
		->when($request->flt_start_date,function($query,$start)
		{
			return $query->whereDate('tickets.closed_at',">=",$start);
        })
		->when($request->flt_end_date,function($query,$end)
		{
			return $query->whereDate('tickets.closed_at',"<=",$end);
        });
		
		$tickets=$query->orderBy('id','DESC')->paginate()
		->through(function ($ticket) {

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
		
		$flt=['flt_sdate'=>$request->flt_start_date,'flt_edate'=>$request->flt_end_date,'flt_cust'=>$request->flt_customer];
		Session::put($flt);
		
		return view('tickets.closed_tickets',compact('tickets','priority','tk_status','users','customer','tlabel'));
		
	}


public function addNewTicket($cust_id)
{
	
		$seg=explode("/",url()->previous());
		$url_seg=$seg[count($seg)-1];
		
		$users=User::where('status',1)->orderBy('id','ASC')->get();
		$priority=Priority::orderBy('id','ASC')->get();
		$tk_status=TicketStatus::orderBy('id','ASC')->get();
		$customer=Customer::orderBy('id','ASC')->get();
		$tlabel=TicketLabel::orderBy('id','ASC')->get();
		$branch=Branch::orderBy('id','ASC')->get();
		
		$additional_field=$this->get_additonal_field();
		
		return view('tickets.add_new_ticket',compact('url_seg','cust_id','priority','tk_status','users','customer','tlabel','branch','additional_field'));
		
}


public function get_additonal_field()
{
	$addi_fields=[];
	$additional_fields = AdditionalField::orderBy('id','ASC')->get();							
	foreach($additional_fields as $key => $row)
        {
            if($row->type == "select"){
                $dt=['field_id'=>$row->id,'field_title'=>$row->title,'field_type'=>$row->type,'field_name'=>$row->name,'field_values'=>$row->value,'mandatory'=>$row->mandatory];
				$addi_fields[]=$dt;
            }else{
                $dt=['field_id'=>$row->id,'field_title'=>$row->title,'field_type'=>$row->type,'field_name'=>$row->name,'field_values'=>null ,'mandatory'=>$row->mandatory];
				$addi_fields[]=$dt;
            }
        }
return $addi_fields;

}

   
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
	 
    public function store(Request $request)
    {

        $input = $request->all();
				
        $validator = Validator::make($input, [
            'issue' => 'required',
            'description' => 'required',
            'customer_id' => 'required',
            'assigned_to' => 'required',
            'priority' => 'required',
            'ticket_status' => 'required',
            'due_date' => 'required',
            'notify_to' => 'required',
            'ticket_label' => 'required',
        ]);
   
        if($validator->fails())
		{
			return response()->json(['msg'=>$validator->errors()->first(),'status'=>false]);
        }
		
		$url_segment=$request->url_segment;  //redirect url segment

		
        $input['created_by']= Auth::user()->id;

        $ticket = Ticket::create($input);
        $ticket->slug=Str::slug($request->issue).'-'.$ticket->id;
        $prefix=User::find(Auth::user()->id);
        $serv=$prefix->prefix.$ticket->id;
        if(str::length($serv)<10)
        {
            $le=str::length($ticket->id);
            $ticket->service_id=str_pad($prefix->prefix,(10-$le),'0').$ticket->id; 
        }
        else
        {
           $ticket->service_id=$serv;
        }
		
		$ticket->status = $request->ticket_status;
		$ticket->ticket_label = $request->ticket_label;
        $ticket->save();

        foreach ($request->assigned_to as $key => $val) {
            $agent=User::where('id',$val)->first();
            $ticket->agent()->attach($val,['created_at'=>Carbon::today()]);
        }
        foreach ($request->notify_to as $key => $val) {
            $ticket->notifyTo()->attach($val,['created_at'=>Carbon::today()]);
        }

		//adding additional fields ----------------------------------
		
		$addi_fields=AdditionalField::orderBy('id','ASC')->get();
		foreach($addi_fields as $key=>$row)
		{
			if($request->has($row->name))
			{
				$data=['ticket_id'=>$ticket->id,
				'additional_field_id'=>$row->id,
				'user_input'=>$request[$row->name],
				];
				
				$res=TicketAdditionalField::create($data);
			}
		}

		//-------------------------------------------------------------

        if($request->attach_file)
        {
            foreach($request->attach_file as $key=>$image)
            {
                $size=$this->formatBytes($image->getSize());
                $fname=substr($image->getClientOriginalName(),0,3).$key;
                $fileName = str::lower($fname).'-'.time().'.'.$image->extension(); 
                //$image->move(public_path('uploads/ticket_image/'), $imageName);
                Storage::disk('local')->putFileAs("ticket_files",$image, $fileName, 'public');
			   
                $img=new TicketImage;
                $img->file_name=$fileName;
                $img->ticket_id=$ticket->id;
                $img->size=$size;
                $img->save();
            }
        }

		
        $agents='';
        $agnt=User::whereIn('id',$request->assigned_to)->pluck('name')->toArray();
        $agents=implode(',', $agnt);
		
        $activity=new Activity;
        $activity->ticket_id=$ticket->id;
        $activity->type='ticket';
        $activity->note='created';
        $activity->title=Auth::user()->name.' created  a '. $ticket->issue.' for '.$agents;
        $activity->status_id=$ticket->status;
        $activity->created_by=Auth::user()->id;
        $activity->description=$ticket->description;
        $activity->agent_id=json_encode($request->assigned_to);
        $activity->save();
        
        /*$success['ticket'] = $ticket;
        //return $this->sendResponse($success, 'Ticket created successfully.');
		
		*/
		
		
		
		Session::flash('success','Ticket successfully added!');
		return redirect($url_segment);
    } 


 public function createCustomer(Request $request)
    {
		
		if($request->new_customer_tab=="modal")
		{
			$validator = Validator::make($request->all(), [
				'customer_name' => 'required',
				'tkt_country_code' => 'required',
				'tkt_contact_number' => 'required',
				'email' => 'required',
				'company_name' => 'required',
			]);
		}
		else
		{
			$validator = Validator::make($request->all(), [
				'customer_name' => 'required',
				'country_code' => 'required',
				'contact_number' => 'required',
				'email' => 'required',
				'company_name' => 'required',
			]);
		}
   
        if($validator->fails())
		{
			return response()->json(['msg'=>$validator->errors()->first(),'status'=>false]);
        }

        //$userid=Auth::user()->id;
		
		$userid=1;
		
		if($request->new_customer_tab=="modal")
		{
			$data=[
				'name' => $request->tkt_customer_name,
				'country_code' =>$request->tkt_country_code,
				'contact' => $request->tkt_contact_number,
				'email' => $request->tkt_email,
				'company_name' =>$request->tkt_company_name,
				'created_by'=>$userid
				];
		}
		else
		{
			$data=[
				'name' => $request->customer_name,
				'country_code' =>$request->country_code,
				'contact' => $request->contact_number,
				'email' => $request->email,
				'company_name' =>$request->company_name,
				'created_by'=>$userid
				];
		}
		$cust=Customer::create($data);
		
		if($cust)
		{
			return response()->json(['data'=>$cust,'msg'=>'Customer successfully added','status'=>true]);
		}
		else
		{
			return response()->json(['data'=>[],'msg'=>'Something wrong, try again','status'=>false]);
		}
		
    } 


public function changeTicketPriority(Request $request)
{
	
	$tkt_id=$request->ticket_id;
	$pstatus=$request->priority;

	$ticket=Ticket::where('id',$tkt_id)->first();
	$pre=Priority::where('id',$pstatus)->first();
	$old_priority=$pre?->title;
	$priority_color=$pre?->color;
		
	$ticket->priority=$pstatus;
	$ticket->save();
		
	$title="Ticket priority changed";
	$desc = Auth::user()->name.' changed ticket priority from '.$old_priority.' to '.($ticket->ticketPriority?$ticket->ticketPriority->title:'');
	
	$ticket->priority_color=$priority_color;
	
	$activity=new Activity;
        $activity->ticket_id=$tkt_id;
        $activity->type='ticket';
        $activity->note='change';
        $activity->title=$title;
        $activity->priority_id=$pstatus;
        $activity->created_by=Auth::user()->id;
        $activity->description=$desc;
        $activity->save();
	
	return response()->json(['data'=>$ticket,'msg'=>'Priority successfully changed!','status'=>true]);
	
}


public function changeBranch(Request $request)
{
	
	$tkt_id=$request->ticket_id;
	$brnid=$request->branch;

	$ticket=Ticket::where('id',$tkt_id)->first();
	$br=Branch::where('id',$brnid)->first();
	$old_branch=$br?->branch;
	
	$ticket->branch_id=$brnid;
	$ticket->save();
		
	$title="Ticket branch changed";
	$desc = Auth::user()->name.' changed ticket branch from '.$old_branch.' to '.($br->branch??'');

	$activity=new Activity;
        $activity->ticket_id=$tkt_id;
        $activity->type='ticket';
        $activity->note='change';
        $activity->title=$title;
        $activity->branch_id=$brnid;
        $activity->created_by=Auth::user()->id;
        $activity->description=$desc;
        $activity->save();
	
	return response()->json(['data'=>$ticket,'msg'=>'Branch successfully changed!','status'=>true]);
	
}


public function changeTicketStatus(Request $request)
{
	
	$tkt_id=$request->ticket_id;
	$tstatus=$request->ticket_status;
	
	$ticket=Ticket::where('id',$tkt_id)->first();
	$tkt_stat=TicketStatus::where('id',$ticket->status)->first();
	$old_status_title="Open";
	if($tkt_stat){	$old_status_title=$tkt_stat->status;}
	
	$ticket->status=$tstatus;
	$ticket->save();
	
	$title="Ticket status changed";
	$desc = Auth::user()->name.' changed ticket status from '.$old_status_title.' to '.$ticket->ticketStatus->status;
	
	if($tstatus==4)
	{
		$update=Carbon::now();
        $to = Carbon::createFromFormat('Y-m-d H:s:i', $update);
        $from = Carbon::createFromFormat('Y-m-d H:s:i', $ticket->created_at);
        $hours =$to->diffInHours($from);
		
		$ticket->closed_at=$update;
		$ticket->save();
		
        DB::table('agent_ticket')->where('agent_id',Auth::user()->id)->where('ticket_id',$tkt_id)->update(['total_time'=>$hours]);

        //TicketNotificationEvent::dispatch($ticket, Auth::user(),"ticket.closed");
                
        $title = "Ticket Closed" ;
        $desc = Auth::user()->name.' changed ticket status from '.$old_status_title.' to '.$ticket->ticketStatus->status.' at '.$to;
	}

		$history=new TicketStatusHistory;
		$history->agent_ticket_id=$tkt_id??0;
		$history->status=$tstatus;
		$history->save();

		$activity=New Activity();
		$activity->ticket_id=$tkt_id;
		$activity->type='ticket';
		$activity->note='change';
		$activity->title = $title;
		$activity->status_id=$tstatus;
		$activity->description = $desc;
		$activity->created_by=Auth::user()->id;
		$activity->save();

	return response()->json(['data'=>$ticket,'msg'=>'Ticket status successfully changed!','status'=>true]);
}


public function assignTicketAgents(Request $request)
{
	$tkt_id=$request->agent_ticket_id;
	$agents=$request->assign_agents;

	$ex_agents=AgentTicket::where('ticket_id',$tkt_id)->pluck('agent_id')->toArray();
		
	if(count($ex_agents)>count($agents)) 
		$agents=array_diff($ex_agents,$agents);
	else
		$agents=array_diff($agents,$ex_agents);

	$msg='';
	foreach ($agents as $key => $val) {
         
		$agt=AgentTicket::where('ticket_id',$tkt_id)->where('agent_id',$val)->first();
		if(!$agt)
		{
			$data=['ticket_id'=>$tkt_id,'agent_id'=>$val];
			$result=AgentTicket::create($data);
			$msg="Agent(s) successfully asigned!";
        }
		else
		{
		  $res=$agt->delete();	
		  $msg="Agent successfully unasigned!";
		}
	}
	
	if($request->option==1)
	{
		$msg="Agent(s) successfully asigned!";
		return response()->json(['msg'=>$msg,'status'=>true]);
	}
	else
	{
		Session::flash('success','Agent(s) successfully assigned!');
		return redirect('list-tickets');
	}
}

public function unassignedTicketAgent(Request $request)
{
	$tkt_id=$request->ticket_id;
	$agent_id=$request->agent_id;
	
	$res=AgentTicket::where('ticket_id',$tkt_id)->where('agent_id',$agent_id)->delete();
	
	return response()->json(['msg'=>'Agent successfully unasigned!','status'=>true]);
}


public function notifyTicketAgents(Request $request)  // this is run only in ticket details page
{
	$tkt_id=$request->agent_ticket_id;
	$agents=$request->assign_agents;
	
	$ex_agents=NotifyTicket::where('ticket_id',$tkt_id)->pluck('agent_id')->toArray();
		
	if(count($ex_agents)>count($agents)) 
		$agents=array_diff($ex_agents,$agents);
	else
		$agents=array_diff($agents,$ex_agents);

	$msg='';
	foreach ($agents as $key => $val) {
         
		$agt=NotifyTicket::where('ticket_id',$tkt_id)->where('agent_id',$val)->first();
		
		if(!$agt)
		{
			$data=['ticket_id'=>$tkt_id,'agent_id'=>$val];
			$result=NotifyTicket::create($data);
			$msg="Notify agent(s) successfully assigned!";
        }
		else
		{
		  $res=$agt->delete();	
		  $msg="Notify agent successfully unasigned!";
		}
	}
	
	if($request->option==1)
	{
		return response()->json(['msg'=>$msg,'status'=>true]);
	}
	else
	{
		Session::flash('success','Notify agent(s) successfully assigned!');
		return redirect('list-tickets');
	}
}

// TICKET DETAIS PAGE ------------------------------------------------------>

// To view selected ticket details---->

public function getTicketDetails($id)
{
	$ticket=Ticket::with(['customer','agent','notifyTo','activity'])->where('id',$id)->first();
	$lognotes=TicketLogNote::leftJoin('users','ticket_log_notes.agent_id','=','users.id')
				->where('ticket_log_notes.ticket_id',$id)->orderBy('ticket_log_notes.id','DESC')->get();
				
	$user=User::orderBy('id','ASC')->get();
	$tstatus=TicketStatus::orderBy('id','ASC')->get();
	$priority=Priority::orderBy('id','ASC')->get();
	$tlabel=TicketLabel::orderBy('id','ASC')->get();
	$product=Product::orderBy('id','ASC')->get();
	$branch=Branch::orderBy('id','ASC')->get();
		
	$spares=ProductTicket::select('product_tickets.*','users.name as user_name','products.name','brands.brand','categories.category')
	->leftJoin('products','product_tickets.product_id','=','products.id')->leftJoin('brands','products.brand_id','=','brands.id')
	->leftJoin('categories','products.category_id','=','categories.id')->leftJoin('users','products.created_by','=','users.id')
	->where('product_tickets.ticket_id',$id)->orderBy('id','DESC')->get();
	
	
	$tfiles=TicketImage::where('ticket_id',$id)->orderBy('id','DESC')->get();
		
	$add=null;
	/*$ticket_additional_fields = TicketAdditionalField::with('additionalField')->where('ticket_id',$id)->get();

	foreach($ticket_additional_fields as $key => $ticket_additional_field)
        {
            $additional_field = $ticket_additional_field->additionalField;
			
            if($additional_field){
                if($additional_field->type == "select"){
                    //$user_selected_ids = !empty($ticket_additional_field->selected_option_ids) ? json_decode($ticket_additional_field->selected_option_ids) : [];
                    $dt=['taf_id'=>$ticket_additional_field->id,'field_id'=>$additional_field->id,'field_title'=>$additional_field->title, 'user_input'=>$additional_field->user_input,'type'=>$additional_field->type,'values'=>$additional_field->value];
					$add[]=$dt;
                }else{
                    $dt=['taf_id'=>$ticket_additional_field->id,'field_id'=>$additional_field->id,'field_title'=>$additional_field->title,'user_input'=>$additional_field->user_input,'type'=>$additional_field->type,'values'=>$ticket_additional_field->user_input];
					$add[]=$dt;
                }
            }
        }
     */
	 
	 /*$ticket_additional_fields = TicketAdditionalField::select('ticket_additional_fields.*','additional_fields.id as additional_id',
								'additional_fields.title','additional_fields.type','additional_fields.value')
								->Join('additional_fields','ticket_additional_fields.additional_field_id','additional_fields.id')
								->where('ticket_additional_fields.ticket_id',$id)->get();*/
								
								
								
	 $additional_fields = AdditionalField::select('additional_fields.*','ticket_additional_fields.id as tkt_addi_id','ticket_additional_fields.user_input')
								->leftJoin('ticket_additional_fields','additional_fields.id','ticket_additional_fields.additional_field_id')
								->where('ticket_additional_fields.ticket_id',$id)->get();							


	foreach($additional_fields as $key => $row)
        {
                if($row->type == "select"){
                    $dt=['taf_id'=>$row->tkt_addi_id,'field_id'=>$row->id,'field_title'=>$row->title, 'user_input'=>$row->user_input,'type'=>$row->type,'values'=>$row->value];
					$add[]=$dt;
                }else{
                    $dt=['taf_id'=>$row->tkt_addi_id,'field_id'=>$row->id,'field_title'=>$row->title,'user_input'=>$row->user_input,'type'=>$row->type,'values'=>$row->user_input];
					$add[]=$dt;
                }
        }
	
   
    $ticket->additional_data=$add;
	
	$tasks=Task::where('ticket_id',$id)->orderBy('id','DESC')->get();
	
	return view('tickets.ticket_details',compact('ticket','user','tstatus','priority','tlabel','lognotes','tasks','product','spares','tfiles','branch'));
}

public function saveLogNote(Request $request)
{
	
	$data=['agent_id'=>Auth::user()->id,	
			'ticket_id'=>$request->log_ticket_id,
			'description'=>$request->log_note,
			'type_id'=>2,
		  ];
	
	$lognote=TicketLogNote::create($data);
	$lognote['name']=Auth::user()->name;
	
	$cdate=date_create($lognote->created_at);
	$lognote['created_date']=$cdate->format('M d')." at ".$cdate->format('h:m A');
	
	if($lognote)
	{
		return response()->json(['data'=>$lognote,'msg'=>'Log note successfully added!','status'=>true]);
	}
	else
	{
		return response()->json(['data'=>[],'msg'=>'Something wrong, Try again`!','status'=>false]);
	}
}


public function saveNewTicketTask(Request $request)
{
	
		$data=['task_name'=>$request->task_name,
			'ticket_id'=>$request->task_ticket_id,
			'description'=>$request->task_description,
			'type_id'=>$request->task_status,
			'created_by'=>Auth::user()->id,
			'expires_at'=>$request->task_date." ".$request->task_time,
			'status'=>$request->task_status,
		];
	
	$task=Task::create($data);
	
	foreach($request->task_assigned_to as $r)
	{
				
		$tdata=['agent_id'=>$r,	
			'task_id'=>$task->id,
			];
		AgentTask::create($tdata);
	}

	$agent_names=User::whereIn('id',$request->task_assigned_to)->pluck('name')->toArray();
	$agent_name=implode(",",$agent_names);
	$task['agent_names']=$agent_name;
	
	$exdate=date_create($task->expires_at);
	$task['scheduled_date']=$exdate->format('M d')." at ".$exdate->format('h:m A');
	
	if($task)
	{
		return response()->json(['data'=>$task,'msg'=>'Task successfully added!','status'=>true]);
	}
	else
	{
		return response()->json(['data'=>[],'msg'=>'Something wrong, Try again`!','status'=>false]);
	}
	
}

public function saveSpareParts(Request $request)
{
	$prid=$request->product_id;
	$prod=Product::select('products.*','brands.brand','categories.category')
	->leftJoin('brands','products.brand_id','=','brands.id')
	->leftJoin('categories','products.category_id','=','categories.id')
	->where('products.id',$prid)->first();
	
	
	$data=['product_id'=>$prod->id,	
			'ticket_id'=>$request->spare_ticket_id,
			'price'=>$prod->cost,
			'quantity'=>$request->quantity,
			'total_amount'=>($prod->cost*$request->quantity),
			'created_by'=>Auth::user()->id
		  ];
	
	$result=ProductTicket::create($data);
	
	$cdate=date_create($result->created_at);
	$result['created_date']=$cdate->format('M d')." at ".$cdate->format('h:m A');
	$result['user_name']=Auth::user()->name;
	$result['product']=$prod->name;
	$result['brand']=$prod->brand;
	$result['category']=$prod->category;
	$result['created_date']=$cdate->format('M d')." at ".$cdate->format('h:m A');
	
	if($result)
	{
		return response()->json(['data'=>$result,'msg'=>'Spare parts successfully added!','status'=>true]);
	}
	else
	{
		return response()->json(['data'=>[],'msg'=>'Something wrong, Try again`!','status'=>false]);
	}
}



public function updateTicket(Request $request)
{
	$tktid=$request->edit_ticket_id;
	
		$data=['issue'=>$request->edit_issue,
				'description'=>$request->edit_description,
			];
		//$res=Ticket::where('id',$tktid)->update($data);
		
		$tkt=Ticket::where('id',$tktid)->first();
		$tkt->issue=$request->edit_issue;
		$tkt->description=$request->edit_description;
		$tkt->save();
		
	if($tkt)
	{
		
		return response()->json(['data'=>$tkt,'msg'=>'Ticket successfully updated!','status'=>true]);
	}
	else
	{
		return response()->json(['data'=>[],'msg'=>'Something wrong, Try again`!','status'=>false]);
	}
	
}

public function deleteTicket($id)
{
	$res=Ticket::where('id',$id)->delete();
	return response()->json(['msg'=>'Ticket successfully deleted!','status'=>true]);

}
  
  
public function updateAdditionalField(Request $request)
{
	$id=$request->id;
	$tkt_id=$request->ticket_id;
	$field_id=$request->field_id;
	$value=$request->data_value;

	$taf=TicketAdditionalField::where('id',$id)->where('ticket_id',$tkt_id)->where('additional_field_id',$field_id)->first();

	if($taf)
	{
		$taf->user_input=$value;
		$taf->save();
		return response()->json(['msg'=>'Additional field updated!','status'=>true]);
	}
	else
	{
		return response()->json(['msg'=>'Additional field not found!','status'=>false]);
	}
	
} 
  
  
public function updateTicketDueDate(Request $request)
{
	$tkt_id=$request->ticket_id;
	$val1=$request->due_date;
	$val2=$request->due_time;
	$value=$val1." ".$val2;
	
	$res=Ticket::where('id',$tkt_id)->update(['due_date'=>$value]);
	if($res)
	{
		return response()->json(['msg'=>'Due date/time successfully updated!','status'=>true]);
	}
	else
	{
		return response()->json(['msg'=>'Something wrong , Try again.','status'=>false]);
	}
	
} 
  
  // DELETED TICKETS 
  
  
  public function deletedTickets(Request $request)
	{
		$start=$request->flt_start_date;
		$end=Carbon::parse($request->flt_end_date)->addDays(1)->format('Y-m-d');
		$customer=1;
		
		$users=User::where('status',1)->orderBy('id','ASC')->get();
		$priority=Priority::orderBy('id','ASC')->get();
		$tk_status=TicketStatus::orderBy('id','ASC')->get();
		$customer=Customer::orderBy('id','ASC')->get();
		$tlabel=TicketLabel::orderBy('id','ASC')->get();
		
				
		$query=Ticket::onlyTrashed()->with('agent','customer','ticketLabel')
		->leftJoin('priorities','tickets.priority','=','priorities.id')
		->leftJoin('ticket_statuses','tickets.status','=','ticket_statuses.id')
		->select('tickets.*','priorities.color as priority_color','ticket_statuses.color_code as status_color')
		
		->when($request->flt_customer,function($query,$customer)
		{
			return $query->where('tickets.customer_id','=',$customer);
        })
		->when($request->flt_start_date,function($query,$start)
		{
			return $query->whereDate('tickets.closed_at',">=",$start);
        })
		->when($request->flt_end_date,function($query,$end)
		{
			return $query->whereDate('tickets.closed_at',"<=",$end);
        });
		
		$tickets=$query->orderBy('id','DESC')->paginate()
		->through(function ($ticket) {

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
		
		$flt=['flt_sdate'=>$request->flt_start_date,'flt_edate'=>$request->flt_end_date,'flt_cust'=>$request->flt_customer];
		Session::put($flt);
		
		return view('tickets.deleted_tickets',compact('tickets','priority','tk_status','users','customer','tlabel'));
	}
 
  
public function restoreTicket($id)
{
	
	$tk=Ticket::withTrashed()->find($id);
	$res=$tk->restore();

	if($res)
	{
		$tkt=Ticket::where('id',$id)->first();
		$tkt->status=2;
		$tkt->updated_at=Carbon::now();
		$tkt->save();

		//$agnt=User::whereIn('id',AgentTicket::where('ticket_id',$id)->pluck('agent_id')->toArray())->pluck('name')->toArray();
		//$agents=implode(',', $agnt);
			
		$activity=new Activity;
		$activity->ticket_id=$tk->id;
		$activity->type='ticket';
		$activity->note='restored';
		$activity->title=$msg=Auth::user()->name.' restored this ticket, Issue is : "'. $tk->issue;
		$activity->status_id=$tk->status;
		$activity->created_by=Auth::user()->id;
		$activity->description=$tk->description;
		$activity->save();

		return response()->json(['msg'=>'Ticket successfully restored!','status'=>true]);
	}
	else
	{
		return response()->json(['msg'=>'Something wrong , Try again.','status'=>false]);
	}
	
} 


public function deleteTicketPermanently($id)
{
	$tk=Ticket::withTrashed()->find($id);
	$res=$tk->forceDelete();

	return response()->json(['msg'=>'Ticket successfully deleted!','status'=>true]);

}
  

public function ticketFileUpload(Request $request)
    {
        $input = $request->all();
   
        $validator = Validator::make($input, [
            'file_ticket_id' => 'required',
            'upload_file'=>'required'
        ]);
   
        if($validator->fails()){
            return response()->json(['msg'=>$validator->errors()->first(),'status'=>false]);         
        }
        
        $ticket=Ticket::find($request->file_ticket_id);
        if (is_null($ticket)) {
			return response()->json(['msg'=>'Ticket not found.','status'=>false]); 
        }
   
		$tk_files=[];
        if($request->upload_file)
        {
            foreach($request->upload_file as $key=>$file)
            {
                $size=$this->formatBytes($file->getSize());
                $fname=substr($file->getClientOriginalName(),0,3).$key;
                $fileName = str::lower($fname).'-'.time().'.'.$file->extension(); 
                //$file->move(public_path('uploads/ticket_files/'), $fileName);
				Storage::disk('local')->putFileAs("ticket_files",$file, $fileName, 'public');

				$dat=[
				'file_name'=>$fileName,
				'ticket_id'=>$request->file_ticket_id,
				'size'=>$size,
				];
				
				$res=TicketImage::create($dat);
				
				$tk_files[]=['file_name'=>$fileName,'created_at'=>$res->created_at];
            }
        }
		
        $activity=new Activity;
        $activity->ticket_id=$ticket->id;
        $activity->type='ticket';
        $activity->note='upload';
        $activity->title=Auth::user()->name.' upload  file';
        $activity->status_id=$ticket->status;
        $activity->created_by=Auth::user()->id;
        $activity->description=$ticket->description;
        $activity->save();

        $success['tk_files'] = $tk_files;

        return response()->json(['data'=>$success,'msg'=>'Ticket file updated successfully.','status'=>true]);
    }

	public function formatBytes($size, $precision = 2) { 
        if ($size > 0) {
            $size = (int) $size;
            $base = log($size) / log(1024);
            $suffixes = array(' bytes', ' KB', ' MB', ' GB', ' TB');

            return round(pow(1024, $base - floor($base)), $precision) . $suffixes[floor($base)];
        } else {
            return $size;
        }
    }


public function deleteTicketFile($id)
{
	$res=TicketImage::where('id',$id)->first();
	if($res)
	{
		Storage::disk('local')->delete("ticket_files/".$res->file_name);
		$res->delete();
	}
	
	return response()->json(['msg'=>'Ticket attached file successfully deleted!','status'=>true]);

}


public function deleteTicketSparePart($id)
{
	$res=ProductTicket::where('id',$id)->delete();
	return response()->json(['msg'=>'Ticket spare part successfully deleted!','status'=>true]);

}



  
}
