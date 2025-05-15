<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Stevebauman\Location\Facades\Location;

use guard;
use Illuminate\Http\Request;

use App\Common\Variables;
use App\Common\Common;

use Session;
use App\Models\User;
use Hash;
use Auth;
use Lang;
use Artisan;
use Flash;
use Carbon\Carbon;

use Validator;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = 'dashboard';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //$this->middleware('authware')->except('logout');
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function showLoginForm()
    {
        return view('login.login');
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     * @throws \Illuminate\Validation\ValidationException
     */
    public function userLogin(Request $request)
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
		
			$credentials = $request->only('email', 'password');
			
			$user = User::where('status', 1)
				->where(function ($query) use ($credentials) {
					$query->where('email', $credentials['email']);
				})
				->first();

				
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
	
	
    /**
     * Get the failed login message.
     *
     * @return string
     */
    protected function getFailedLoginMessage()
    {
        return Lang::has('auth.failed')
            ? Lang::get('auth.failed')
            : 'These credentials do not match our records.';
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     * Logout
     */
    public function logout(Request $request)
    {
        Auth::logout();
        Session::flush();
        return redirect('/');
    }
}
