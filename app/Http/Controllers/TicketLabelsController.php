<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Str;

use App\Models\Ticket;
use App\Models\TicketLabel;
use App\Models\User;

use Carbon\Carbon;
use Validator;
use Session;
use DB;
use Log;
use Auth;
use DataTables;



class TicketLabelsController extends Controller
{

	public function __construct()
	{
		// code here
	}
	
	public function index(Request $request)
	{
		$user_id=User::getVendorId();
		$login_user=User::where('id',$user_id)->first();
		return view('settings.ticket_labels',compact('login_user'));
	}


public function saveLabelColor(Request $request)
{

	$lbl=new TicketLabel();
	$lbl->label=$request->ticket_label;
	$lbl->color=$request->label_color;
	$lbl->active=1;
	$lbl->created_by=Auth::user()->id;
	$res=$lbl->save();
	if($res)
		{
			return response()->json(['data'=>$res,'msg'=>'Ticket label successfully added','status'=>true]);
		}
		else
		{
			return response()->json(['data'=>[],'msg'=>'Something wrong, try again','status'=>false]);
		}
}

public function viewLabels()
{

      //$id=User::getVendorId();
	  	  
      $labels = TicketLabel::select('ticket_labels.*','users.name as user_name')
	  ->leftJoin('users','ticket_labels.created_by','=','users.id')
	  ->orderby('id','DESC')->get();
	
        return Datatables::of($labels)
		->addIndexColumn()
        
		->addColumn('colorbox', function ($row) {
                $col='<span class="span-color badge rounded-pill" data-color="'.$row->color.'" style="height:15px;width:100px;background:'.$row->color.';" >&nbsp;</span>';
            return $col;
        })
		
		->addColumn('createdBy', function ($row) {
            return $row->user_name;
        })
		
        ->addColumn('action', function ($row)
        {
			$action='<button type="button" class="btn btn-outline-light btn-icon-circle btn-icon-circle-sm font-20 dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"><i class="mdi mdi-dots-vertical"></i></button>
			<div class="dropdown-menu" style="">
				<a class="dropdown-item edit" id="'.$row->id.'" href="javascript:;" data-bs-toggle="modal" data-bs-target="#editLabelColorModal"><i class="fa fa-edit"></i> Edit</a>
				<a class="dropdown-item delete" id="'.$row->id.'" href="javascript:;"><i class="fa fa-trash"></i> Delete</a>
			</div>';
			
			return $action;
        })
        ->rawColumns(['action','colorbox'])
        ->make(true);
    }


 public function updateLabel(Request $request)
    {

        $validator = Validator::make($request->all(), [
            'edit_ticket_label' => 'required',
            'edit_label_color' => 'required',
        ]);
   
        if($validator->fails())
		{
			return response()->json(['msg'=>$validator->errors()->first(),'status'=>false]);
        }

        $tk = TicketLabel::where('id',$request->edit_label_id)->first();
        $tk->label = $request->edit_ticket_label;
		$tk->color = $request->edit_label_color;
		$tk->save();
		
		Session::flash('success','Ticket Label successfully updated!');
		return redirect('ticket-labels');
    } 


	public function destroy($id)
    {
        $tk = TicketLabel::where('id',$id)->first();
		$res=$tk->delete();
		
		if($res)
			{
				return response()->json(['msg'=>'Ticket label successfully deleted','status'=>true]);
			}
			else
			{
				return response()->json(['msg'=>'Something wrong, try again','status'=>false]);
			}
	}

 
}
