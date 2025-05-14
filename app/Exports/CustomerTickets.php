<?php

namespace App\Exports;


use Maatwebsite\Excel\Concerns\WithHeadings;
//use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\FromCollection;

use App\Models\Ticket;
use App\Models\User;
use App\Models\Priority;
use App\Models\Customer;
use App\Models\TicketStatus;

class CustomerTickets implements FromCollection,WithHeadings
{
	//use Exportable;
		
	protected $sdate =null;
	protected $edate =null;
	protected $customer =null;

	function __construct($sdate, $edate,$customer)
	{
		$this->sdate=$sdate;
		$this->edate=$edate;
		$this->customer=$customer;
	}
		
    /**
    * @return \Illuminate\Support\Collection
    */

	  public function headings():array{
        return[
            'Slno',
            'Issue',
			'Description',
			'Customer',
            'Due Date',
			'Priority',
			'Status',
			'Created By',
			'Created At',
        ];
		
    } 
	
    public function collection()
    {
		$sdate=$this->sdate;
		$edate=$this->edate;
		$customer=$this->customer;
				
		$query=Ticket::select('tickets.*','customers.name as customer_name','ticket_statuses.status as status_name','priorities.title as priority_name','users.name as user_name')
			->leftJoin('ticket_statuses','tickets.status','=','ticket_statuses.id')
			->leftJoin('priorities','tickets.priority','=','priorities.id')
			->leftJoin('customers','tickets.customer_id','=','customers.id')
			->leftJoin('users','tickets.created_by','=','users.id')
			->where('tickets.customer_id', $customer);
				
			if($sdate!="0" and $edate!="0") {
				$query->whereBetween('tickets.created_at',[$sdate,$edate]);
			}
						
	 $tickets=$query->orderBy('id','ASC')->get();
		
		$data = array();
		$uData = array();
		
        if(!empty($tickets))
        {
			foreach ($tickets as $key=>$r)
            {
				
					$uData['slno'] = ++$key;
					$uData['issue'] = $r->issue;
					$uData['description'] =$r->description;
					$uData['customer'] =$r->customer_name;
					$uData['duedate'] =$r->due_date;
					$uData['priority'] =$r->priority_name;
					$uData['status'] =$r->status_name;
					$uData['createdby'] =$r->user_name;
					$uData['createdat'] =$r->created_at;
					
			    $data[] = $uData;
			}
        }

		return collect($data);   

		//return McqTestResult::all();
    }

	
}
