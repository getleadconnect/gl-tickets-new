<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class loginController extends Controller
{
    
	public function __construct()
	{
		
		
	}
	
	public function login(Request $request)
	{

		$validate = Validator::make(request()->all(),[
			'email' => 'required', 
            'password' => 'required',
        ]);
		
		if($validate->fails())
		{
			Session::flash('error','Invalid credentials. Try again');
			return back()->withErrors(['msg'=>"Invalid credenstials"]);
		}
		else
		{
			try
            {

			$credentials = $request->only('email', 'password');
			
			$user = User::where('status', 1)
				->where(function ($query) use ($credentials) {
					$query->where('email', $credentials['email']);
				})
				->first();
				
                if ($user && Hash::check($request->password,$user->password)) 
                {
					
					Auth::login($user);
                    $success['token'] =  $user->createToken('glTicketApp')->plainTextToken; 
					$success['user'] =  $user;
										
                    return response()->json(['data'=>$success,'message' => 'Logged Successfully','status' => true]);  
                }   
                 else
                 {
                    return response()->json(['message' => 'Invalid Credentials', 'status' => false]); 
                 }
            }catch(\Exception $e){
                return response()->json(['message' => $e->getMessage(), 'status' => false]);
            }
        } else{
            return response()->json(['message' => $validator->messages(), 'status' => false]);
        }



				
			if ($user && Hash::check($credentials['password'], $user->password)) 
			{
				Auth::login($user);

				//$user->datetime_last_login = Carbon::now();
				//$rs=$user->save();

				if ($user->status == User::ADMIN)
				{
					
					if ($user->role_id == Variables::ADMIN) 
					{
						return redirect('dashboard');
					}
					else if($user->role_id == Variables::AGET)
					{
						 return redirect('aget_dashboard');
					}
					else if($user->role_id == Variables::MANAGER)
					{
						 return redirect('manager_dashboard');
					}
				}
				else
				{
					Session::flash('error','Your account has been deactivated,Please contact your administrator');
				}
				
			}
			else
			{
				Session::flash('error','Invalid credentials. Try again');
				return back();
			}			
		
		}
	
	}
		
	}
	
}
