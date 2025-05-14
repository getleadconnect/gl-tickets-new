<?php

namespace App\Exports;


use Maatwebsite\Excel\Concerns\WithHeadings;
//use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\FromCollection;


use App\Models\User;
use App\Models\Customer;
use App\Models\Payment;

class PaymentReport implements FromCollection,WithHeadings
{
	//use Exportable;
		
	protected $sdate =null;
	protected $edate =null;
	protected $month =null;
	protected $pmode =null;
	protected $year =null;

	function __construct($sdate, $edate,$month,$pmode,$year)
	{
		$this->sdate=$sdate;
		$this->edate=$edate;
		$this->month=$month;
		$this->pmode=$pmode;
		$this->year=$year;
	}
		
    /**
    * @return \Illuminate\Support\Collection
    */

	  public function headings():array{
        return[
            'Slno',
            'TicketId',
			'Customer',
            'Service Charge',
			'Item Cost',
			'Discount',
			'Total',
			'Net Amount',
        ];
		
    } 
	
    public function collection()
    {
		$sdate=$this->sdate;
		$edate=$this->edate;
		$month=$this->month;
		$pmode=$this->pmode;
		$year=$this->year;
				
		$query=Payment::select('payments.*','customers.name as customer_name','users.name as user_name')
			->leftJoin('customers','payments.customer_id','=','customers.id')
			->leftJoin('users','payments.created_by','=','users.id');

		if($month!="0") {
			$query->whereMonth('payments.created_at', $month);
		}
		
		if($year!="0") {
			$query->whereYear('payments.created_at', $year);
		}
			
		if($pmode!="0") {
			$query->where('payments.payment_mode', $pmode);
		}
		if($sdate!="0" and $edate!="0") {
			$query->whereBetween('payments.created_at',[$sdate,$edate]);
		}
			
		$tickets=$query->orderBy('id','ASC')->get();
		
		$data = array();
		$uData = array();
		
        if(!empty($tickets))
        {
			foreach ($tickets as $key=>$r)
            {
				
					$uData['slno'] = ++$key;
					$uData['ticketid'] = $r->ticket_id;
					$uData['customer'] =$r->customer_name;
					$uData['sercharge'] =$r->service_charge;
					$uData['itemcost'] =$r->item_cost;
					$uData['discount'] =$r->discount;
					$uData['total'] =$r->total_amount;
					$uData['netamount'] =$r->net_amount;
					
			    $data[] = $uData;
			}
        }

		return collect($data);   

		//return McqTestResult::all();
    }

	
}
