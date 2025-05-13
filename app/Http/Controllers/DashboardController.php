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


class DashboardController extends Controller
{

public function index()
{
	$cust_count=Customer::count();
	
	$tk_count= Ticket::selectRaw("COUNT(*) as total,
						SUM(CASE WHEN status = 2 THEN 1 ELSE 0 END) as open,
						SUM(CASE WHEN status = 3 THEN 1 ELSE 0 END) as progress,
						SUM(CASE WHEN status = 4 THEN 1 ELSE 0 END) as closed
						")->get();
	
	
	$overdue=Ticket::whereDate('due_date','<=',date('Y-m-d'))->where('status','!=',4)->count();
	
	
	return view('dashboard',compact('tk_count','cust_count','overdue'));
}

 
 
}


