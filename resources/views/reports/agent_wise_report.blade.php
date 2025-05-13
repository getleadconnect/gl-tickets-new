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
				<h4 class="page-title">Agent Wise Report </h4>

				
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
									<select class="form-select" id="flt_agent_id" name="flt_agent_id">
									<option value="" selected>Select Agent</option>
										 @foreach($agents as $key=>$val)
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
                                            <th>Issue</th>
                                            <th>Description</th>
                                            <th>Customer</th>
                                            <th>Due Date</th>
											<th>Priority</th>
											<th>Status</th>
											<th>Created By</th>
											<th>Created At</th>
                                          </tr>
                                        </thead>
                                        <tbody>
                                                                                             
                                        </tbody>
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
			url:"{{url('view-agent-tickets-report')}}",
			data: function (data) 
		    {
               //data.search = $('input[type="search"]').val();
			   data.agent_id = $('#flt_agent_id').val();
			   data.start_date = $('#flt_start_date').val();
			   data.end_date = $('#flt_end_date').val();
		    },
        },

        columns: [
            {"data": 'DT_RowIndex', name: 'DT_RowIndex', orderable: false, searchable: false  },
			{"data": "issue" },
			{"data": "description" },
			{"data": "customer_name" },
			{"data": "due_date" },
			{"data": "priority_name" },
			{"data": "status_name" },
			{"data": "createdby" },
			{"data": "createdat" },
       ],
});

$(document).on('click','.btn-filter',function()
{
	$('#datatable1').DataTable().ajax.reload(null, false);
});





</script>
@endpush
@endsection

