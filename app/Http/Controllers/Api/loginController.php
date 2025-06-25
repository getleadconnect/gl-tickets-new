<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;

use Illuminate\Support\Facades\Hash;
use App\Http\Controllers\Api\BaseController as BaseController;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Tymon\JWTAuth\Facades\JWTAuth;
use Tymon\JWTAuth\Exceptions\JWTException;

use Auth;
use Validator;
use App\Models\User;
use App\Traits\GetAgents;
use App\Traits\ConnectCrm;
use App\Traits\InitiateLogin;
use Carbon\Carbon;
use App\Notification\SendOtpEmail;


class LoginController extends BaseController
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
			
			$user = User::where('status', 1)->where(function ($query) use ($credentials)
				{	
					$query->where('email', $credentials['email']);
				})->first();
				
                if ($user && Hash::check($request->password,$user->password)) 
                {
					
					Auth::login($user);
                    $success['token'] =  $user->createToken('glTicketApp')->plainTextToken; 
					//$success['user'] =  $user;
					$success['user'] = $user->only(['id','name','email','phone','image','image_path','address','location']);
										
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

		}
	
}
