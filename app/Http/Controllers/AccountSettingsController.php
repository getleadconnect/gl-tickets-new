<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Str;

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
use App\Models\TicketAdditionalField;
use App\Models\TicketStatusHistory;

use App\Models\Role;
use App\Models\Designation;
use App\Models\Department;
use App\Models\Branch;

use Hash;
use Carbon\Carbon;
use Validator;
use Session;
use DB;
use Log;
use Auth;
use DataTables;

class AccountSettingsController extends Controller
{
		
	public function index(Request $request)
	{
		$user_id=User::getVendorId();
		$login_user=User::where('id',$user_id)->first();
		return view('settings.profile',compact('login_user'));
	}
	
	
public function changeProfile(Request $request)
{
	$user_id=$request->pass_user_id;
	
	$data=['name'=>$request->user_name,
		   'email'=>$request->user_email,
		  ];
	$res=User::where('id',Auth::user()->id)->update($data);
	if($res)
		{
			return response()->json(['data'=>$data,'msg'=>'User profile successfully updated','status'=>true]);
		}
		else
		{
			return response()->json(['data'=>[],'msg'=>'Something wrong, try again','status'=>false]);
		}
}

public function changePassword(Request $request)
{
	$newpass=$request->new_password;
	$confpass=$request->confirm_password;
	$data=['password'=>Hash::make($newpass)];
	$res=User::where('id',Auth::user()->id)->update($data);
	if($res)
		{
			return response()->json(['data'=>$data,'msg'=>'User password successfully updated','status'=>true]);
		}
		else
		{
			return response()->json(['data'=>[],'msg'=>'Something wrong, try again','status'=>false]);
		}
}

public function listUsers()
{
	return view('settings.users_and_departments');	
}


public function viewUserslist()
{

      //$id=User::getVendorId();
	  	  
      $users = User::select('users.*','roles.name as role_name','designations.designation')
	  ->leftJoin('roles','users.role_id','=','roles.id')
	  ->leftJoin('designations','users.designation_id','=','designations.id')
	  ->orderby('id','DESC')->get();
	
        return Datatables::of($users)
		->addIndexColumn()
        
		->addColumn('status', function ($row) {
            if ($row->status==1) {
                $status='<span class="badge rounded-pill bg-success">Active</span>';
            } else {
                $status='<span class="badge rounded-pill bg-danger">Inactive</span>';
            }
			return $status;
        })
						
		->addColumn('created', function ($row) {
            if ($row->created_at!="")
				return date_create($row->created_at)->format('d-m-Y');
			return "--";
        })
				
        ->addColumn('action', function ($row)
        {
			$action='<button type="button" class="btn btn-outline-light btn-icon-circle btn-icon-circle-sm font-20 dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"><i class="mdi mdi-dots-vertical"></i></button>
			<div class="dropdown-menu" style="">
				<a class="dropdown-item edit" id="'.$row->id.'" href="javascript:;" data-bs-toggle="modal" data-bs-target="#editUserModal"><i class="fa fa-edit"></i> Edit</a>
				<a class="dropdown-item delete" id="'.$row->id.'" href="javascript:;"><i class="fa fa-trash"></i> Delete</a>
				<a class="dropdown-item change_pass" id="'.$row->id.'" href="javascript:;" data-bs-toggle="modal" data-bs-target="#changePassModal"><i class="fa fa-lock"></i> Change Password</a>
			</div>';
			
			return $action;
        })
        ->rawColumns(['action','status'])
        ->make(true);
    }



public function saveUser(Request $request)
{

	$ex_cnt=User::where('email',$request->user_email)->count();
	if($ex_cnt>0)
	{
		return response()->json(['msg'=>'Email already exist!','status'=>false]);
	}
	else
	{
		$data=[
			'name'=>$request->user_name,
			'email'=>$request->user_email,
			'mobile'=>$request->user_mobile,
			'designation_id'=>$request->user_desig,
			'role_id'=>$request->user_role,
			'password'=>Hash::make($request->user_password),
			'status'=>1,
			];
		
		$res=User::create($data);
		
		if($res)
			{
				return response()->json(['msg'=>'User successfully added','status'=>true]);
			}
			else
			{
				return response()->json(['msg'=>'Something wrong, try again','status'=>false]);
			}
		}
    }


public function editUser($id)
{
	$udt=User::findorfail($id);
	$role=Role::orderBy('id','ASC')->get();
	$desig=Designation::orderBy('id','ASC')->get();
	return view('settings.edit_user_modal',compact('udt','role','desig'));
	
}


 public function updateUser(Request $request)
    {

        $input = $request->all();
   
        $validator = Validator::make($input, [
            'edit_name' => 'required',
            'edit_email' => 'required',
            'edit_mobile' => 'required',
            'edit_desig' => 'required',
            'edit_role' => 'required',
        ]);
   
        if($validator->fails())
		{
			return response()->json(['msg'=>$validator->errors()->first(),'status'=>false]);
        }

        $usr = User::where('id',$request->user_id)->first();
        $usr->name = $request->edit_name;
		$usr->email = $request->edit_email;
		$usr->mobile = $request->edit_mobile;
		$usr->designation_id = $request->edit_desig;
		$usr->role_id = $request->edit_role;
        $usr->save();
		
		Session::flash('success','User details successfully updated!');
		return redirect('list-users');
    } 


	public function destroy($id)
    {
        $usr = User::where('id',$id)->first();
		$res=$usr->delete();
		
		if($res)
			{
				return response()->json(['msg'=>'User successfully deleted','status'=>true]);
			}
			else
			{
				return response()->json(['msg'=>'Something wrong, try again','status'=>false]);
			}
	}

public function changeUserPassword(Request $request)
    {
        $usr = User::where('id',$request->user_id)->first();
		$pass=Hash::make($request->new_pass);
		$usr->password=$pass;
		$res=$usr->save();
		
		if($res)
			{
				return response()->json(['msg'=>'User password successfully changed','status'=>true]);
			}
			else
			{
				return response()->json(['msg'=>'Something wrong, try again','status'=>false]);
			}
	}
  
 
 // BRANCH ---------------------------------------------------
 

public function viewBranches()
{

      //$id=User::getVendorId();
	  	  
      $desig = Branch::select('branches.*','users.name as user_name')->leftJoin('users','branches.created_by','=','users.id')
	  ->orderby('id','DESC')->get();
	
        return Datatables::of($desig)
		->addIndexColumn()
        ->addColumn('action', function ($row)
        {
			$action='<button type="button" class="btn btn-outline-light btn-icon-circle btn-icon-circle-sm font-20 dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"><i class="mdi mdi-dots-vertical"></i></button>
			<div class="dropdown-menu">
				<a class="dropdown-item delete_branch" id="'.$row->id.'" href="javascript:;"><i class="fa fa-trash"></i> Delete</a>
			</div>';
			
			return $action;
        })
        ->rawColumns(['action'])
        ->make(true);
    }
	

public function saveBranch(Request $request)
 {
	 
		$bran =New Branch();
		$bran->branch=$request->branch_name;
		$bran->created_by=Auth::user()->id;
		$res=$bran->save();
		if($res)
			{
				return response()->json(['msg'=>'Branch successfully added','status'=>true]);
			}
			else
			{
				return response()->json(['msg'=>'Something wrong, try again','status'=>false]);
			}
 }
 
 
  public function deleteBranch($id)
    {
        $bran = Branch::where('id',$id)->first();
		$res=$bran->delete();
		
		if($res)
			{
				return response()->json(['msg'=>'Branch successfully deleted','status'=>true]);
			}
			else
			{
				return response()->json(['msg'=>'Something wrong, try again','status'=>false]);
			}
	}
  
 //DESIGNATIONS ---------------------------------------------
 
 public function saveDesignation(Request $request)
 {
	 
		$desig =New Designation();
		$desig->designation=$request->designation;
		$desig->created_by=Auth::user()->id;
		$res=$desig->save();
		if($res)
			{
				return response()->json(['msg'=>'Designation successfully added','status'=>true]);
			}
			else
			{
				return response()->json(['msg'=>'Something wrong, try again','status'=>false]);
			}
	 
	 
 }
 
 public function viewDesignations()
{

      //$id=User::getVendorId();
	  	  
      $desig = Designation::select('designations.*','users.name')->leftJoin('users','designations.created_by','=','users.id')
	  ->orderby('id','DESC')->get();
	
        return Datatables::of($desig)
		->addIndexColumn()
				
        ->addColumn('action', function ($row)
        {
			$action='<button type="button" class="btn btn-outline-light btn-icon-circle btn-icon-circle-sm font-20 dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"><i class="mdi mdi-dots-vertical"></i></button>
			<div class="dropdown-menu" style="">
				<a class="dropdown-item delete_desig" id="'.$row->id.'" href="javascript:;"><i class="fa fa-trash"></i> Delete</a>
			</div>';
			
			return $action;
        })
        ->rawColumns(['action'])
        ->make(true);
    }
 
 public function deleteDesignation($id)
    {
        $desig = Designation::where('id',$id)->first();
		$res=$desig->delete();
		
		if($res)
			{
				return response()->json(['msg'=>'Designation successfully deleted','status'=>true]);
			}
			else
			{
				return response()->json(['msg'=>'Something wrong, try again','status'=>false]);
			}
	}

 //DEPARTMENTS ------------------------------------------------
 
 public function saveDepartment(Request $request)
 {
	 
		$dep =New Department();
		$dep->department=$request->department;
		$dep->created_by=Auth::user()->id;
		$res=$dep->save();
		if($res)
			{
				return response()->json(['msg'=>'Department successfully added','status'=>true]);
			}
			else
			{
				return response()->json(['msg'=>'Something wrong, try again','status'=>false]);
			}
	 
	 
 }
 
 public function viewDepartments()
{

      //$id=User::getVendorId();
	  	  
      $deps = Department::select('departments.*','users.name')->leftJoin('users','departments.created_by','=','users.id')
	  ->orderby('id','DESC')->get();
	
        return Datatables::of($deps)
		->addIndexColumn()
				
        ->addColumn('action', function ($row)
        {
			$action='<button type="button" class="btn btn-outline-light btn-icon-circle btn-icon-circle-sm font-20 dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"><i class="mdi mdi-dots-vertical"></i></button>
			<div class="dropdown-menu" style="">
				<a class="dropdown-item delete_depart" id="'.$row->id.'" href="javascript:;"><i class="fa fa-trash"></i> Delete</a>
			</div>';
			
			return $action;
        })
        ->rawColumns(['action'])
        ->make(true);
    }
 
 public function deleteDepartment($id)
    {
        $dep = Department::where('id',$id)->first();
		$res=$dep->delete();
		
		if($res)
			{
				return response()->json(['msg'=>'Department successfully deleted','status'=>true]);
			}
			else
			{
				return response()->json(['msg'=>'Something wrong, try again','status'=>false]);
			}
	}

 
 
 
 
 
 
 
 
 
}
