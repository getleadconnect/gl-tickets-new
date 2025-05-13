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
.numeric-col,.sum
{
	text-align:right;
}

</style>
 <div class="container-fluid">
 
	<div class="row">
		<div class="col-sm-12">
			<div class="page-title-box">
				<div class="float-end">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Metrica</a>
						</li><!--end nav-item-->
						<li class="breadcrumb-item"><a href="#">CRM</a>
						</li><!--end nav-item-->
						<li class="breadcrumb-item active">Opportunities</li>
					</ol>
				</div>
				<h4 class="page-title">Payments Report </h4>

				
			</div><!--end page-title-box-->
		</div><!--end col-->
	</div>
         
		 <!-- end page title end breadcrumb -->
  
    <div class="row">
      <div class=" col-md-12 col-lg-12 col-xl-12 col-xxl-12">

				<div class="card">
					<div class="card-body p-0">  

					<div class="row align-items-center m-2">
						<div class="col-9">     
								
									<h4 class="card-title">Filter By:</h4>
									
									<input type="hidden" id="flt_start_date" name="flt_start_date" value="{{Session::get('flt_tkt_sdate')}}">
									<input type="hidden" id="flt_end_date" name="flt_end_date" value="{{Session::get('flt_tkt_edate')}}">

									<div class="row">
									<div class="col-4 col-lg-4 col-xl-4">
										<div class="input-group" id="DateRange">
											<input type="text" class="form-control" placeholder="Start" aria-label="StartDate" id="start_date" value="{{Session::get('flt_tkt_sdate')}}" autocomplete=off>
											<span class="input-group-text">to</span>
											<input type="text" class="form-control" placeholder="End" aria-label="EndDate" id="end_date" value="{{Session::get('flt_tkt_edate')}}"autocomplete=off>
										</div>
									</div>
									
									<div class="col-3 col-lg-2 col-xl-2">
									<select class="form-select" id="flt_month_id" name="flt_month_id">
									<option value="" selected disabled>Select Month</option>
										 <option value="1">January</option>
										 <option value="2">Febraury</option>
										 <option value="3">March</option>
										 <option value="4">April</option>
										 <option value="5">May</option>
										 <option value="6">June</option>
										 <option value="7">July</option>
										 <option value="8">August</option>
										 <option value="9">September</option>
										 <option value="10">October</option>
										 <option value="11">November</option>
										 <option value="12">December</option>
									</select>
									</div>
									
									<div class="col-2 col-lg-2 col-xl-2">
										<select class="form-select" id="flt_pay_mode" name="flt_pay_mode">
										<option value="" selected disabled>Payment Mode</option>
										 <option value="offline">Offline</option>
										 <option value="online">Online</option>
									</select>
										
									</div>
									
									<div class="col-2 col-lg-1 col-xl-1">
									
										<select class="form-select" id="flt_year" name="flt_year">
										<option value="" selected disabled>Year</option>
										@for($x=2025;$x<=date('Y')+1;$x++)
											<option value="{{$x}}" @if($x==date('Y')) selected @endif >{{$x}}</option>
										 @endfor
									</select>
									</div>
								
									<div class="col-2 col-lg-2 col-xl-2">
										<button type="button" class="btn btn-primary btn-pad btn-filter"><i class="fas fa-filter"></i> Filter </button>&nbsp;&nbsp;&nbsp;
										<!--<button type="submit" id="btn_flt_clear" class="btn btn-secondary btn-pad"><i class="fas fa-clean"></i> Clear </button>-->
									</div>
									</div>

								</div><!--end col-->  

							<div class="col-3 text-end" id="export-buttons" >                      
								
								
							</div><!--end col-->  

							
						</div>  <!--end row-->  

						<div class="tab-pane p-3 active" id="tab_users" role="tabpanel">
						
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
                                            <th>Ticket Id</th>
                                            <th>Customer</th>
                                            <th>Ser.Charge</th>
											<th>Item Cost</th>
											<th>Discount</th>
											<th>Total</th>
											<th>Net Amount</th>
                                          </tr>
                                        </thead>
                                        <tbody>
                                                                                             
                                        </tbody>
										<tfoot>
										<tr >
											<th></th>
                                            <th></th>
                                            <th></th>
                                            <th ></th>
											<th ></th>
											<th></th>
											<th></th>
											<th></th>
                                          </tr>
										</tfoot>
                                      </table>
							
									
									</div><!--end col-->

								</div><!--end row-->  
						</div>        
					</div> <!--end card-body-->                            
				</div><!--end card-->
						

						
		</div><!--end col-->
	</div><!--end row-->
</div>			
	<!---  DETAILS MODAL ------------------------------------------------------------>			

 <script src="https://cdn.datatables.net/buttons/2.3.4/js/buttons.html5.min.js"></script>
 <script src="https://cdn.datatables.net/buttons/2.3.4/js/buttons.html5.min.js"></script>
 <script src="https://cdn.datatables.net/buttons/2.3.4/js/buttons.print.min.js"></script>


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
			url:"{{url('view-payments-report')}}",
			data: function (data) 
		    {
               //data.search = $('input[type="search"]').val();
			   data.month = $('#flt_month').val();
			   data.year = $('#flt_year').val();
			   data.pay_mode = $('#flt_pay_mode').val();
			   data.start_date = $('#flt_start_date').val();
			   data.end_date = $('#flt_end_date').val();
		    },
        },

        columns: [
            {"data": 'DT_RowIndex', name: 'DT_RowIndex', orderable: false, searchable: false  },
			{"data": "ticket_id" },
			{"data": "customer_name" },
			{"data": "service_charge",className:'numeric-col' , orderable: false},
			{"data": "item_amount",className:'numeric-col' , orderable: false},
			{"data": "total_amount",className:'numeric-col', orderable: false },
			{"data": "discount" ,className:'numeric-col',orderable: false},
			{"data": "net_amount",className:'sum',orderable: false},
       ],
	   
	"footerCallback": function ( row, data, start, end, display ) {
            var api = this.api(), data;
 
            // converting to interger to find total
            var intVal = function ( i ) {
                return typeof i === 'string' ?
                    i.replace(/[\$,]/g, '')*1 :
                    typeof i === 'number' ?
                        i : 0;
            };
				
	     var netTotal = api
                .column( 7 )
                .data()
                .reduce( function (a, b) {
                    return intVal(a) + intVal(b);
                }, 0 );
				
            // Update footer by showing the total with the reference of the column index 
			$( api.column( 5 ).footer()).html('Total').css('font-size',20);
            $( api.column( 7 ).footer()).html(netTotal).css('font-size',20);
        },   

});



var buttons = new $.fn.dataTable.Buttons(table, {
		buttons: [
            {
                extend: 'excelHtml5',
                title: "{{Session::get('comm_month_year')}}"
            },
			{
                extend: 'csvHtml5',
                title: "{{Session::get('comm_month_year')}}"
            },
            {
                extend: 'pdfHtml5',
                title: "{{Session::get('comm_month_year')}}"
            }
		]
			
	}).container().appendTo($('#export-buttons'));



$(document).on('click','.btn-filter',function()
{
	$('#datatable1').DataTable().ajax.reload(null, false);
});





</script>
@endpush
@endsection

