<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Str;

use App\Models\Ticket;
use App\Models\TicketLabel;
use App\Models\User;
use App\Models\AdditionalField;
use App\Models\TicketAdditionalField;

use Carbon\Carbon;
use Validator;
use Session;
use DB;
use Log;
use Auth;
use DataTables;



class TicketAdditionalFieldsController extends Controller
{
		
	public function index(Request $request)
	{
		$user_id=User::getVendorId();
		$login_user=User::where('id',$user_id)->first();
		return view('settings.ticket_additional_fields',compact('login_user'));
	}

public function saveAdditionalField(Request $request)
{

        $validator = Validator::make($request->all(), [
            'field_name' => 'required',
			'field_type' => 'required',
			'field_title' => 'required',
            'data_multiselect' => 'nullable' ,
            'show_filter'=> 'nullable|boolean' ,
            'show_list' => 'nullable|boolean' ,
            'values' => 'nullable|required_if:type,select|array'
        ]);
   
        if($validator->fails()){
            //return $this->sendError($validator->errors()->first(),[],422);  
			return response()->json(['msg'=>$validator->errors()->first(),'status'=>false]);			
        }
		
		$created_record = AdditionalField::where('type',$request->field_type)
                            ->whereJsonContains('value',($request->values))
                            ->first();
		if($created_record)
        {   
            //return $this->sendError('This field has already been added', []); 
			return response()->json(['msg'=>'This field has already been added','status'=>false]);	
        }
        else
        {		

			if($request->field_type == "select" && $request->values == null)
            {
                //return $this->sendError('This field requires values to be added', []); 
				return response()->json(['msg'=>'This field requires values to be added','status'=>false]);	
            }	

			$field = new AdditionalField;
            $field->user_id = Auth::user()->id;
            $field->type = $request->field_type;
            $field->name = $request->field_name;
            $field->title = $request->field_title;            
            $field->mandatory = ($request->data_required=="on")?1:0;
            $field->show_filter = ($request->show_in_filter=="on")?1:0;
            $field->show_list = ($request->show_in_list=="on")?1:0;
            $res=$field->save();
			
			
			if($request->field_type == "select")
            {
                $value_to_input = [] ;
                $svalues = $request->values;
				$valArray = array_filter($svalues);  //remove null value
				$x=1;
                foreach($valArray as $key=>$value){
					if($value!="")
					{
						$value_to_input[] = [
							'id' => $x++,
							'value' => $value
						];
					}
                }
                $field->value = $value_to_input;
                $field->selection = ($request->data_multiselect=="on")?"multiple":"single";
                $field->save();
            }

			if($res)
				{
					return response()->json(['data'=>$res,'msg'=>'Additional field successfully added','status'=>true]);
				}
				else
				{
					return response()->json(['data'=>[],'msg'=>'Something wrong, try again','status'=>false]);
				}
		}
		
		
}

public function viewAdditionalFields()
{

      //$id=User::getVendorId();
	  	  
      $afields = AdditionalField::select('additional_fields.*','users.name as user_name')
	  ->leftJoin('users','additional_fields.user_id','=','users.id')
	  ->orderby('id','DESC')->get();
	
        return Datatables::of($afields)
		->addIndexColumn()
        
		->addColumn('colorbox', function ($row) {
                $col='<span class="span-color badge rounded-pill" data-color="'.$row->color.'" style="height:15px;width:100px;background:'.$row->color.';" >&nbsp;</span>';
            return $col;
        })
		
		->addColumn('field_title', function ($row) {
                
            return $row->title;
        })
		
		->addColumn('mandat', function ($row) {
            return ($row->mandatory==1)?"YES":"NO";
        })
		->addColumn('sfilter', function ($row) {
            return ($row->show_filter==1)?"YES":"NO";
        })
		->addColumn('slist', function ($row) {
            return ($row->show_list==1)?"YES":"NO";
        })
		
		->addColumn('createdBy', function ($row) {
            return $row->user_name;
        })
		
		->addColumn('afields', function ($row) {
			$sval="";
			if($row->type="select" and $row->value!="")
			{
				foreach($row->value as $key=>$val)
				{
					$sval.=", ".$val['value'];
				}
			}

			return $sval?substr($sval,1):"--";
        })
		
        ->addColumn('action', function ($row)
        {
			$action='<button type="button" class="btn btn-outline-light btn-icon-circle btn-icon-circle-sm font-20 dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"><i class="mdi mdi-dots-vertical"></i></button>
			<div class="dropdown-menu" style="">
				<a class="dropdown-item edit" id="'.$row->id.'" href="javascript:;" data-bs-toggle="modal" data-bs-target="#editAdditionalFieldModal"><i class="fa fa-edit"></i> Edit</a>
				<a class="dropdown-item delete" id="'.$row->id.'" href="javascript:;"><i class="fa fa-trash"></i> Delete</a>
			</div>';
			
			return $action;
        })
        ->rawColumns(['action','colorbox'])
        ->make(true);
    }


public function edit($id)
{
	$af=AdditionalField::findorfail($id);
	return view('settings.edit_additional_field',compact('af'));
	
}

 public function updateAdditionalField(Request $request)
    {
		$id=$request->edit_afield_id;

        $validator = Validator::make($request->all(), [
            'edit_field_title' => 'required',
            'edit_field_name' => 'required',
			'edit_field_type' => 'required',
        ]);
   
        if($validator->fails())
		{
			Session::flash('fail',$validator->errors()->first());
			return back();
        }
				
			$field = AdditionalField::where('id',$id)->first();
            $field->user_id = Auth::user()->id;
            $field->type = $request->edit_field_type;
            $field->name = $request->edit_field_name;
            $field->title = $request->edit_field_title;            
            $field->mandatory = ($request->edit_data_required=="on")?1:0;
            $field->show_filter = ($request->edit_show_filter=="on")?1:0;
            $field->show_list = ($request->edit_show_list=="on")?1:0;
            $res=$field->save();
			
			if($request->edit_field_type == "select")
            {
                $value_to_input = [] ;
                $svalues = $request->edit_values;
				$valArray = array_filter($svalues);  //remove null value
				$x=1;
                foreach($valArray as $key=>$value){
					if($value!="")
					{
						$value_to_input[] = [
							'id' => $x++,
							'value' => $value
						];
					}
                }
                $field->value = $value_to_input;
                $field->selection = ($request->data_multiselect=="on")?"multiple":"single";
                $field->save();
            }

		Session::flash('success','Additional field successfully updated!');
		return redirect('additional-fields');
    } 


	public function destroy($id)
    {
        $af = AdditionalField::where('id',$id)->first();
		$res=$af->delete();
		
		if($res)
			{
				return response()->json(['msg'=>'Additional field successfully deleted','status'=>true]);
			}
			else
			{
				return response()->json(['msg'=>'Something wrong, try again','status'=>false]);
			}
	}

 
 
 
 
 
 
 
 
 
 
 
 
}
