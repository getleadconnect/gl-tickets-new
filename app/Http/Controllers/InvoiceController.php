<?php

namespace App\Http\Controllers;

use App\Enums\InvoiceStatusEnum;
use App\Http\Controllers\Controller;
use App\Http\Resources\InvoiceCollectionResource;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\File;
use Illuminate\Http\Request;
use Illuminate\Support\Number;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Support\Facades\Storage;

use App\Models\Invoice;
use App\Models\InvoiceItem;
use App\Models\User;
use App\Models\Ticket;
use App\Models\ProductTicket;
use App\Models\Payment;
use App\Models\Customer;


use Carbon\Carbon;
use Auth;
use Validator;
use Session;
use DataTables;

class InvoiceController extends Controller
{
    /**
     * Display a listing of the resource.
     */
	 
    public function index(Request $request)
    {
		$cust=Customer::orderBy('id','ASC')->get();
        return view('invoice.list_invoice',compact('cust'));
    }
	
	public function viewInvoicesList(Request $request)
	{

		$cust_id=$request->customer_id??'';
		$sdate=$request->start_date;
		$edate=$request->end_date;
		
        $query=Invoice::select('invoices.*','customers.name as customer_name','users.name as user_name')
			->leftJoin('customers','invoices.customer_id','=','customers.id')
			->leftJoin('users','invoices.created_by','=','users.id')
			
			->when($request->customer_id, function ($query, $cust_id) {
				return $query->where('invoices.customer_id','=',$cust_id);
			})
			
			->when($request->start_date, function ($query, $sdate) {
				return $query->whereDate('invoices.invoice_date','>=',$sdate);
			})
			->when($request->end_date, function ($query, $edate) {
				return $query->whereDate('invoices.invoice_date','<=',$edate);
			});
			
	 $invoices=$query->orderBy('id','ASC')->get();

 return Datatables::of($invoices)
		->addIndexColumn()
		
		->addColumn('createdby',function($row){
			return $row->user_name;
		})
		->addColumn('inv_date',function($row){
			return Carbon::parse($row->invoice_date)->format('d-m-Y');
		})
		
		->addColumn('pay_status',function($row){
			if($row->status=="paid")
				$ps='<span class="badge rounded-pill bg-success font-12">Paid</span>';
			else
				$ps='<span class="badge rounded-pill bg-warning font-12">Pending</span>';
			
			return $ps;
		})
		
		->addColumn('action',function($row)
		{
			$btn1="";
			if($row->status=="paid")
			{
				$btn='<div class="btn-inv-action">
					<span><a href="'.url('uploads/receipts/').'/'.$row->pdf_file_name.'" class="btn btn-outline-primary btn-icon-circle btn-icon-circle-sm" download  title="download"><i class="fas fa-download"></i></a>&nbsp;
					<a href="javascript:;" class="btn btn-outline-danger btn-icon-circle btn-icon-circle-sm btn-print"  id="'.$row->invoice_id.'" title="print" >
					<i class="fas fa-print"></i></a></span></div>';
					
					//'.url('get-bill-preview')."/".$row->invoice_id.' data-bs-toggle="offcanvas" data-bs-target="#previewOffcanvas"
			}
			else
			{
				$btn='<button type="button" class="btn btn-outline-primary btn-pay" data-invoiceid="'.$row->invoice_id.
				'" style="padding:4px 10px;color:red !important;"  
				 data-scharge="'.$row->service_charge.'" data-itemcost="'.$row->item_cost.'" data-totamount="'.$row->total_amount.'">
				Pay <i class="fas fa-arrow-right"></i></button>';	
			}
			
			return $btn;
		})
		
        ->rawColumns(['action','pay_status'])
        ->make(true);
    }

	

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
    
        $input = $request->all();
        $validator = Validator::make($input, [
            'inv_ticket_id' => 'required|exists:tickets,id',
            'service_charge' => 'required|numeric|regex:/^\d+(\.\d{1,2})?$/',
            'payment_mode' => 'required|in:offline,online',
        ]);
   
        if($validator->fails()){
            return response()->json(['msg'=>$validator->errors()->first(),'status'=>false]);          
        }
		
        $prefix= Auth::user();
        $ticket = Ticket::find($request->inv_ticket_id);
		
		$invoice=Invoice::where('ticket_id',$request->inv_ticket_id)->first();
		
		if($invoice and $invoice->status=="paid")
		{
			return response()->json(['msg'=>"Invoice already created, Thank You!",'status'=>false]); 
		}
		
		if(!$invoice)
		{
		    $invoice=new Invoice();	
		}
		
		$invoice->ticket_id=$ticket->id;
		$invoice->customer_id=$ticket->customer_id;
		$invoice->invoice_date = Carbon::now() ;
		$invoice->service_charge=$request->service_charge;
		$invoice->status='pending';
		$invoice->payment_method=$request->payment_mode??'offline';
		$invoice->created_by=Auth::user()->id;
		$invoice->created_at=Carbon::now();
		$invoice->save();
		
		
		$item_cost=0;
		$items=ProductTicket::where('ticket_id',$ticket->id)->get();
        foreach($items as $key=>$itm)
        {
           $item_cost+=$itm->total_amount;
        }

        $serv=$prefix->prefix.$invoice->id;
        if(str::length($serv)<10)
        {
            $le=str::length($invoice->id);
			$serv=str_pad($prefix->prefix,(10-$le),'0').$invoice->id; 
            $invoice->invoice_id=$serv;
        }
        else
        {
           $invoice->invoice_id=$serv;
        }

        $invoice->item_cost=$item_cost;
        $invoice->total_amount=$item_cost+$invoice->service_charge;
        $invoice->save();

        return response()->json(['msg'=>"Invoice successfully added!",'status'=>true]); 

    }

	 
    public function edit(string $id)
    {
        //
    }

public function setInvoicePayment(Request $request)  
    {
		$invoice_id=$request->invoice_id;
				
		try
		{
			$inv=Invoice::where('id',$invoice_id)->first();
			if($inv)
			{

				$data=[
						'invoice_id'=>$inv->id,
						'ticket_id'=>$inv->ticket_id,
						'customer_id'=>$inv->customer_id,
						'service_charge'=>$inv->service_charge,
						'item_amount'=>$inv->item_cost,
						'total_amount'=>$inv->total_amount,
						'discount'=>$request->discount??0,
						'payment_mode'=>$inv->payment_mode,
						'net_amount'=>$inv->total_amount-($request->discount??0),
						'created_by'=>Auth::user()->id,
						];
				
				$res=Payment::where('invoice_id',$invoice_id)->delete();
				
				$result=Payment::create($data);
				
				if($result)
				{
					$bill_name=$this->generatePdfBill($inv->id);

					if($bill_name!=false)
					{	
						$inv->pdf_file_name=$bill_name;
						$inv->status="paid";
						$inv->save();
					}
					
					return response()->json(['msg'=>'Payment receipt accepted. Thank You!','status'=>true]); 
				}
				else
				{
					return response()->json(['msg'=>'Something wrong, Try again!','status'=>false]);
				}
				
			}
			else
			{
				return response()->json(['msg'=>'Invoice not found!','status'=>false]);
			}
		}
		catch(\Exception $e)
		{
			return response()->json(['msg'=>$e->getMessage(),'status'=>false]);
		}
		
    }
	
	public function generatePdfBill($inv_id)
	{
		
		try
		{
			$invoice=Invoice::where('invoice_id',$inv_id)->first();
			$customer=Customer::where('id',$invoice->customer_id)->first();
			$ticket=Ticket::where('id',$invoice->ticket_id)->first();
			$pitems=ProductTicket::where('ticket_id',$invoice->ticket_id)->get();
			$pay=Payment::where('ticket_id',$invoice->ticket_id)->first();
			
			$amount_in_words = Number::spell($pay->net_amount);
			
			$order_date = date("d-m-Y", strtotime($invoice->invoice_date));
			$invoice_file_name = $invoice->invoice_id.time()."_invoice.pdf" ;
			$pdf = Pdf::loadView('receipt.invoice',compact('invoice','customer','ticket','pitems','pay','amount_in_words','order_date'));
			$path="uploads/receipts/";
			$res=$pdf->save($path.$invoice_file_name);
			return $invoice_file_name;
		}
		catch(\Exception $e)
		{
			\Log::info($e->getmessage());
			return false;
		}
	}
	
	
	
	//bill preview pdf
	
	public function getBillPreview($inv_id)
	{
		
		$invoice=Invoice::where('invoice_id',$inv_id)->first();
		
		$path="uploads/receipts/";
		
		if($invoice->pdf_file_name!="" and (Storage::disk('local')->exists('receipts/'.$invoice->pdf_file_name)))
		{
			return response()->json(['path'=>url($path.$invoice->pdf_file_name),'status'=>true]);	
		}
		else
		{
			$bill_name=$this->generatePdfBill($invoice->id);
			if(bill_name!=false)
			{
				$invoice->pdf_file_name=$invoice_file_name;
				$invoice->status='paid';
				$invoice->save();
				return response()->json(['path'=>url($path.$invoice_file_name),'status'=>true]);
			}
			else
			{
				return response()->json(['path'=>url($path.'no_preview.pdf'),'status'=>true]);
			}
			
		}
	}
	
	
	
//PAYMENTS -----------------------------------


public function payments()
{
	$cust=Customer::orderBy('id','ASC')->get();
    return view('invoice.list_payments',compact('cust'));
}


 public function viewPayments(Request $request)
	{

		$cust_id=$request->customer_id??'';
		$sdate=$request->start_date;
		$edate=$request->end_date;
		
        $query=Payment::select('payments.*','customers.name as customer_name','users.name as user_name')
			->leftJoin('customers','payments.customer_id','=','customers.id')
			->leftJoin('users','payments.created_by','=','users.id')
			
			->when($request->customer_id, function ($query, $cust_id) {
				return $query->where('invoices.customer_id','=',$cust_id);
			})
			
			->when($request->start_date, function ($query, $sdate) {
				return $query->whereDate('invoices.invoice_date','>=',$sdate);
			})
			->when($request->end_date, function ($query, $edate) {
				return $query->whereDate('invoices.invoice_date','<=',$edate);
			});
			
	 $pays=$query->orderBy('id','ASC')->get();

 return Datatables::of($pays)
		->addIndexColumn()
		
		->addColumn('createdby',function($row){
			return $row->user_name;
		})
		->addColumn('inv_date',function($row){
			return Carbon::parse($row->invoice_date)->format('d-m-Y');
		})
		
		->addColumn('pay_mode',function($row){
			if($row->payment_mode=="offline")
				$ps='<span class="badge rounded-pill bg-info font-12">offline</span>';
			else
				$ps='<span class="badge rounded-pill bg-warning font-12">Online</span>';
			
			return $ps;
		})
		
		->addColumn('action',function($row)
		{
			$btn='<div class="btn-inv-action">
					<a href="javascript:;" class="btn btn-outline-danger btn-icon-circle btn-icon-circle-sm btn-print"  id="'.$row->invoice_id.'" title="print" >
					<i class="fas fa-trash"></i></a>';
						
			return $btn;
		})
		
		
        ->rawColumns(['action','pay_mode'])
        ->make(true);
    }




    /**
     * Update the specified resource in storage.
     */
	 
/*	 
    public function update(Request $request, string $id)
    {
        $input = $request->all();
        $validator = Validator::make($input, [
            // 'customer_id' => 'required',
            // 'ticket_service_id' => 'required',
            // 'count' => 'required',
            'service_charge' => 'required',
            'payment_method' => 'required|in:offline,online',
            // 'item_id'=>'array',
            // 'item_qty'=>'array',
            // 'item_price'=>'array',
        ]);
   
        if($validator->fails()){
            return $this->sendError($validator->errors()->first(),[],422);         
        }

        $item_cost=0;

        $invoice=new Invoice;
        $invoice->ticket_id=$request->ticket_id;
        $invoice->customer_id=$request->customer_id;
        $invoice->invoice_date=$request->invoice_date;
        $invoice->service_charge=$request->service_charge;
        $invoice->status= InvoiceStatusEnum::pending;
        $invoice->payment_method=$request->payment_method??'offline';
        $invoice->save();

        if($request->item_id)
        {
            InvoiceItem::where('invoice_id',$request->invoice_id)->delete();
            foreach($request->item_id as $key=>$itemId)
            {
                $item= new InvoiceItem;
                $item->invoice_id=$invoice->id;
                $item->item_id=$invoice->id;
                $item->qty=$request->item_qty[$key];
                $item->cost=$request->item_price[$key];
                $item->total_cost=($request->item_qty[$key] * $request->item_price[$key]);
                $item->save();
                $item_cost=$item_cost+$item->total_cost;
            }
            $invoice->item_cost=$item_cost;
            $invoice->save();
        }
        $invoice->total_amount=$invoice->item_cost+$invoice->service_charge;


        $success['ticket'] = $invoice;
        return $this->sendResponse($success, 'Invoice updated successfully.');

    }

    /**
     * Remove the specified resource from storage.
     */
	 
/*
    public function destroy(string $id)
    {
        $invoice=Invoice::where('id',$id)->delete();
          InvoiceItem::where('invoice_id',$id)->delete();
        $success['invoice'] = $invoice;
       return $this->sendResponse($success, 'invoice deleted successfully.');
    }
		
	
	//add invoice amount to payments table ->to change invoice status "Paid"
	
	public function savePayment(Request $request)  
    {
		$invoice_id=$request->invoice_id;
		$status=$request->status;
		
		try
		{
			$success['payments']=[];
			if(Str::upper($status)=="PAID")
			{
				$inv=Invoice::where('id',$invoice_id)->first();
				if($inv)
				{
					$spare_sum=ProductTicket::where('ticket_id',$inv->id)->sum('price');
					
					$data=[
							'invoice_id'=>$inv->id,
							'ticket_id'=>$inv->ticket_id,
							'customer_id'=>$inv->customer_id,
							'service_charge'=>$inv->service_charge,
							'total_cost'=>$inv->item_cost,
							'parts_rate'=>$inv->$spare_sum??0,
							'total_amount'=>$inv->total_amount,
							];
					
					$res=Payment::where('invoice_id',$invoice_id)->delete();
					
					$result=Payment::create($data);
					$success['payments']=$result;
					
					if($result)
					{
						return $this->sendResponse($success, 'Payment receipt accepted. Thank You!','status'=>true);
					}
					else
					{
						return $this->sendResponse($success, 'Something wrong, Try again!','status'=>false);
					}
					
				}
				else
				{
					return $this->sendResponse($success, 'Invoice not found!','status'=>false);
				}
			}
		}
		catch(\Exception $e)
		{
			return $this->sendResponse($success, $e->getMessage(),'status'=>false);
		}
    }
	*/
	
}
