@extends('layouts.master')
@section('title','Tickets')
@section('contents')
<style>
.nav-link
{
	font;
}
.card {
	min-width:20rem !important;
}
.pagination {
    --bs-pagination-font-size: .8rem !important;
}

.p-btn
{
    --bs-btn-padding-x: .2rem !important;
    --bs-btn-padding-y: .2rem !important;
}

</style>

 <div class="container-fluid">
 
	<div class="row">
		<div class="col-sm-12">
			<div class="page-title-box">
				<div class="float-end">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="{{url('dashboard')}}">Home</a>
						</li><!--end nav-item-->
						<li class="breadcrumb-item active"><a href="#">Invoices</a>
						</li><!--end nav-item-->
						
					</ol>
				</div>
				<h4 class="page-title">Invoices</h4>

				
			</div><!--end page-title-box-->
		</div><!--end col-->
	</div>
         
		 <!-- end page title end breadcrumb -->
  
    <div class="row">
      <div class=" col-md-12 col-lg-12 col-xl-12 col-xxl-12">

				<div class="card">
					<div class="card-body p-0">  

					<div class="row align-items-center m-2">
						<div class="col-6">     
								
									<h4 class="card-title">Filter By:</h4>
									
									<input type="hidden" id="flt_start_date" name="flt_start_date" value="{{Session::get('flt_tkt_sdate')}}">
									<input type="hidden" id="flt_end_date" name="flt_end_date" value="{{Session::get('flt_tkt_edate')}}">

									<div class="row">
									<div class="col-6 col-lg-6 col-xl-6">
										<div class="input-group" id="DateRange">
											<input type="text" class="form-control" placeholder="Start" aria-label="StartDate" id="start_date" value="{{Session::get('flt_tkt_sdate')}}" autocomplete=off>
											<span class="input-group-text">to</span>
											<input type="text" class="form-control" placeholder="End" aria-label="EndDate" id="end_date" value="{{Session::get('flt_tkt_edate')}}"autocomplete=off>
										</div>
									</div>
									
									<div class="col-3 col-lg-3 col-xl-3">
									<select class="form-select" id="flt_customer_id" name="flt_customer_id">
									<option value="" selected>Select Customer</option>
										 @foreach($cust as $key=>$val)
										 <option value="{{$val->id}}">{{$val->name}}</option>
										 @endforeach
									</select>
									</div>
																		
									<div class="col-2 col-lg-2 col-xl-2">
										<button type="button" class="btn btn-primary btn-pad btn-filter"><i class="fas fa-filter"></i> Filter </button>&nbsp;&nbsp;&nbsp;
										<!--<button type="submit" id="btn_flt_clear" class="btn btn-secondary btn-pad"><i class="fas fa-clean"></i> Clear </button>-->
									</div>
									</div>

								</div><!--end col-->  

							<div class="col-6 text-end">                      
								
							</div><!--end col-->  

							
						</div>  <!--end row-->  
						
						<!------------ SET PAYMENT MODAL --------------->
						
						<div id="setPayment" class="hide"  style="position:fixed;z-index:9999999;right:10px;top:150px;">
							<div class="card">
									<div class="card-header" style="background:#433653;">
										<div class="row align-items-center">
											<div class="col">                      
												<h4 class="card-title" style="color:#fff;">Add Invoice</h4>                      
											</div><!--end col-->                                                       
										</div>  <!--end row-->                                  
									</div><!--end card-header-->
									<div class="card-body" style="background-color:#eff9ef !important;">  
											
											<form id="setInvoicePayment">
											@csrf
											
											<div class="mb-3">
												<label for="service_charge">Invoice Id</label>
												<input type="text" class="form-control read-only" id="invoice_id" name="invoice_id" placeholder="Invoice id" readonly required>
											</div>
											
											<div class="mb-3">
												<label for="service_charge">Service Charge</label>
												<input type="text" class="form-control" id="service_charge"  name="service_charge" placeholder="Service charge" readonly required>
											</div>
											
											<div class="mb-3">
												<label for="item_cost">Item Cost</label>
												<input type="number" class="form-control" id="item_cost" name="item_cost" placeholder="item cost" readonly required>
											</div>
											
																	
											<div class="mb-3">
												<label for="total_amount">Total Amount</label>
												<input type="text" class="form-control" id="total_amount" name="total_amount"  placeholder="total_amount" readonly required>
											</div>

											<div class="mb-3">
												<label for="discount">Discount</label>
												<input type="text" class="form-control" id="discount" name="discount" placeholder="discount" required>
											</div>
											
											<div class="mb-3">
												<label for="sku_code">Payment Mode</label>
												<select class="form-control"  id="payment_mode"  name="payment_mode" placeholder="payment mode" required>
												<option value="">select</option>
												<option value="offline">Offline</option>
												<option value="online">Online</option>
												</select>
											</div>
											
											<div class="row">
												<div class="col-12 text-right" style="text-align:right;">
													<button type="submit" class="btn btn-primary btn-pad"> Submit </button>
													<button type="button" class="btn btn-danger btn-pad btn-pay-close"  >Cancel</button>
												</div>
											</div>
										</form>                                                                    
									</div>                                            
								</div>
							</div>
							
						<!--- ---------------------------------->
						
							<div class="row">                    
									<div class="export-buttons col-md-12 col-lg-12 text-end">
									
									</div><!--end col-->
								</div><!--end row-->
						
								<div class="row mt-3">
									<div class="col-lg-12">

										<table id="datatable1" class="table align-middle" style="width:100% !important;">
                                        <thead class="thead-light">
										
                                          <tr>
											<th>#</th>
                                            <th>Invoice_id</th>
											<th>Ticket Id</th>
                                            <th>Customer</th>
                                            <th>Inv.Date</th>
											<th>Service Charge</th>
											<th>Item Cost</th>
											<th>Total Amount</th>
											<th>Created By</th>
											<th>Pay.Status</th>
											<th>Action</th>
                                          </tr>
                                        </thead>
                                        <tbody>
                                                                                             
                                        </tbody>
                                      </table>
							
									
									</div><!--end col-->

								</div><!--end row-->  
    
					</div> <!--end card-body-->                            
				</div><!--end card-->
						

						
		</div><!--end col-->
	</div><!--end row-->
</div>			

<div class="modal fade hide" data-bs-backdrop="static" data-bs-keyboard="false" id="modalBillPreview" tabindex="-1" aria-hidden="true" >
				
		<div class="modal-dialog modal-fullscreen" style="width:70% !important; height:80% !important;margin-left:15%;margin-right:15%;margin-top:80px;border:2px solid #c4c4c4;">
			<div class="modal-content card">
				<div class="modal-header" style="background:#433653;">
				  <h6 class="modal-title" id="exampleModalFullscreenLabel">PRINT INVOICE</h6>
				  <button type="button" class="btn-close btn-close-preview" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
				
				<iframe id="iframeBillPreview" src="{{url('uploads/receipts/no_preview.pdf')}}" width="100%" height="99%"></iframe> 			
					<!---  content here ------------>
					
				</div>
				
				<div class="modal-footer">
				  <button type="button" class="btn btn-secondary btn-pad btn-close-preview" data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>


@push('scripts')

<script>

elem=document.getElementById("DateRange");
new DateRangePicker(elem,{autohide:true,format:"yyyy-mm-dd"});


const startElem = document.getElementById('start_date');
const endElem = document.getElementById('end_date');

startElem.addEventListener('changeDate', function(e) {
  $("#flt_start_date").val(document.getElementById('start_date').value);
});
endElem.addEventListener('changeDate', function(e) {
  $("#flt_end_date").val(document.getElementById('end_date').value);
});


$(".btn-close-preview").click(function()
{
	$("#iframeBillPreview").attr('src','#');
	$("#modalBillPreview").removeClass('show').addClass('hide');
});

$(".btn-pay-close").click(function()
{
	$("#service_charge").val('');
	$("#item_cost").val('');
	$("#total_amount").val('');
	$("#setPayment").removeClass('show').addClass('hide');
});


var table = $('#datatable1').DataTable({
        processing: true,
        serverSide: true,
		stateSave:true,
		paging     : true,
        pageLength :50,
		scrollX: true,
		
		'pagingType':"simple_numbers",
        'lengthChange': true,
			
		ajax:
		{
			url:"{{url('view-invoices-list')}}",
			data: function (data) 
		    {
               data.customer_id = $('#flt_customer_id').val();
			   data.start_date = $('#flt_start_date').val();
			   data.end_date = $('#flt_end_date').val();
		    },
        },

        columns: [
            {"data": 'DT_RowIndex', name: 'DT_RowIndex', orderable: false, searchable: false  },
			{"data": "invoice_id" },
			{"data": "ticket_id" },
			{"data": "customer_name" },
			{"data": "inv_date" },
			{"data": "service_charge" },
			{"data": "item_cost" },
			{"data": "total_amount" },
			{"data": "createdby" },
			{"data": "pay_status" },
			{"data": "action" },
       ],
});

$(document).on('click','.btn-filter',function()
{
	$('#datatable1').DataTable().ajax.reload(null, false);
});


$("#datatable1 tbody").on('click','.btn-pay',function()
{
	var inv_id=$(this).data('invoiceid');
	var scharge=$(this).data('scharge');
	var cost=$(this).data('itemcost');
	var amt=$(this).data('totamount');
	$("#invoice_id").val(inv_id);
	$("#service_charge").val(scharge);
	$("#item_cost").val(cost);
	$("#total_amount").val(amt);
	
	$("#setPayment").removeClass('hide').addClass('show');
		
});


var pay_validate=$('#setInvoicePayment').validate({ 
	
		rules: {
            service_charge: {required: true,},
			item_cost: {required: true,},
			total_amount: {required: true,},
			discount: {required: true,},
			payment_mode: {required: true,},
           },

	submitHandler: function(form) 
	{
		$.ajax({
		url: "{{route('set-invoice-payment')}}",
		method: 'post',
		data: $('#setInvoicePayment').serialize(),
		dataType:'json',
		
		success: function(result){
			if(result.status == 1)
			{
				toastr.success(result.msg);
				$("#setPayment").removeClass('show').addClass('hide');
				$('#datatable1').DataTable().ajax.reload(null, false);

			}
			else
			{
				toastr.error(result.msg);
			}
		}
		});
	  }
	});	
	
$("#datatable1 tbody").on('click',".btn-print",function()
{

	var inv_id=$(this).attr('id');
		jQuery.ajax({
			type: "GET",
			url: "{{url('get-bill-preview')}}"+"/"+inv_id,
			dataType: 'json',
			//data: {vid: vid},
			success: function(res)
			{
				if(res.status==true)
				{
					$("#iframeBillPreview").attr('src',res.path);
					$("#modalBillPreview").removeClass('hide').addClass('show');
				}
			   
			}
		});	
		
});

</script>
@endpush
@endsection

