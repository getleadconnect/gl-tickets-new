<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Str;

use App\Models\Ticket;
use App\Models\TicketStatus;
use App\Models\User;

use App\Models\TicketStatusHistory;

use Carbon\Carbon;
use Validator;
use Session;
use DB;
use Log;
use Auth;
use DataTables;


class TicketStatusController extends Controller
{
		
	public function index(Request $request)
	{
		$user_id=User::getVendorId();
		$login_user=User::where('id',$user_id)->first();
		return view('settings.ticket_status',compact('login_user'));
	}

 
public function saveTicketStatus(Request $request)
{

	$ts=new TicketStatus();
	$ts->label=$request->ticket_status;
	$ts->color=$request->status_color;
	$ts->active=1;
	$ts->created_by=Auth::user()->id;
	$res=$ts->save();
	
	if($res)
		{
			return response()->json(['data'=>$res,'msg'=>'Ticket status successfully added','status'=>true]);
		}
		else
		{
			return response()->json(['data'=>[],'msg'=>'Something wrong, try again','status'=>false]);
		}
}

public function viewTicketStatus()
{

      //$id=User::getVendorId();
	  	  
      $tstatus = TicketStatus::select('ticket_statuses.*','users.name as user_name')
	  ->leftJoin('users','ticket_statuses.created_by','=','users.id')
	  ->orderby('id','DESC')->get();
	
        return Datatables::of($tstatus)
		->addIndexColumn()
        
		->addColumn('colorbox', function ($row) {
                $col='<span class="ts-color badge rounded-pill" data-color="'.$row->color_code.'" style="height:15px;width:100px;background:'.$row->color_code.';" >&nbsp;</span>';
            return $col;
        })
		
		->addColumn('createdBy', function ($row) {
            return $row->user_name;
        })
		
        ->addColumn('action', function ($row)
        {
			$action='<button type="button" class="btn btn-outline-light btn-icon-circle btn-icon-circle-sm font-20 dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"><i class="mdi mdi-dots-vertical"></i></button>
			<div class="dropdown-menu" style="">
				<a class="dropdown-item edit-status" id="'.$row->id.'" href="javascript:;" data-bs-toggle="modal" data-bs-target="#editTicketStatusModal"><i class="fa fa-edit"></i> Edit</a>
			</div>';
			
			return $action;
        })
        ->rawColumns(['action','colorbox'])
        ->make(true);
    }


 public function updateTicketStatus(Request $request)
    {

        $validator = Validator::make($request->all(), [
            'edit_ticket_status' => 'required',
            'edit_status_color' => 'required',
        ]);
   
        if($validator->fails())
		{
			return response()->json(['msg'=>$validator->errors()->first(),'status'=>false]);
        }

        $ts = TicketStatus::where('id',$request->edit_status_id)->first();
        $ts->status = $request->edit_ticket_status;
		$ts->color_code = $request->edit_status_color;
		$ts->save();
		
		Session::flash('success','Ticket status successfully updated!');
		return redirect('ticket-labels');
    } 

 
 
}
