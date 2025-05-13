@extends('layouts.master')
@section('title','Tickets')
@section('contents')

<style>

.flex-gap{	gap:10px;	justify-content:flex-end;}
.br-v-blue{	border-color:#5656af !important;}
.t-label{	color:#655e5e;}
.btn-icon-circle { width: 25px !important; height: 25px !important;}
.btn{padding:3px; !important;}
.btn-icon-circle-sm1 { width: 15px; height: 15px; line-height: 1; padding: 0;border:1px solid #d3d2d2;}
.st-agent{ background-color:#f3f3f3;padding:4px; border-radius:5px;	min-width:150px; color:#544e4e;}
.fs-11{	font-size:11px;}
select option{	background:#fff !important;}
.error{	color:red;}
a>h4{ color:#2b54cd !important;}
.btn-reopen-ticket:hover{ background-color:#b6d2fb !important;}
.btn-delete-ticket:hover{background-color:#b6d2fb !important;}

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
                                <h4 class="page-title">DELETED TICKETS</h4>

								
                            </div><!--end page-title-box-->
                        </div><!--end col-->
                    </div>
                    <!-- end page title end breadcrumb -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="row align-items-center">
                                        <div class="col-10">     
										<form method="post" action="{{route('closed-tickets')}}" >
										@csrf										
                                            <h4 class="card-title">Filter By:</h4>
											
											<input type="hidden" id="flt_start_date" name="flt_start_date" value="{{Session::get('flt_sdate')}}">
											<input type="hidden" id="flt_end_date" name="flt_end_date" value="{{Session::get('flt_edate')}}">

											<div class="row">
											<div class="col-3 col-lg-3 col-xl-3">
												<div class="input-group" id="DateRange">
													<input type="text" class="form-control" placeholder="Start" aria-label="StartDate" id="start_date" value="{{Session::get('flt_sdate')}}" autocomplete=off>
													<span class="input-group-text">to</span>
													<input type="text" class="form-control" placeholder="End" aria-label="EndDate" id="end_date" value="{{Session::get('flt_edate')}}"autocomplete=off>
												</div>
											</div>
											
											<div class="col-2 col-lg-2 col-xl-2">
												<select class="form-select" id="flt_customer" name="flt_customer">
												<option value="" >Select Customer</option>
													 @foreach($customer as $key=>$val)
													 <option value="{{$val->id}}"  @if(Session::get('flt_cust')==$val->id) selected @endif >{{$val->name}}</option>
													 @endforeach
												</select>
											</div>
											
											<div class="col-2 col-lg-2 col-xl-2">
												<button type="submit" class="btn btn-primary btn-pad"><i class="fas fa-filter"></i> Filter </button>&nbsp;&nbsp;&nbsp;
												<button type="submit" id="btn_flt_clear" class="btn btn-secondary btn-pad"><i class="fas fa-clean"></i> Clear </button>
											</div>
											</div>
										</form>	
                                        </div><!--end col-->  
										<div class="col-2 text-end">                      
                                            <a href="{{route('list-tickets')}}" class="btn btn-primary btn-pad"><i class="fa fa-caret-right"></i>&nbsp;&nbsp; Tickets</a>             
                                        </div><!--end col-->  
                                    </div>  <!--end row-->                                  
                                </div><!--end card-header-->

                            </div><!--end card-->
                        </div><!--end col-->
                    </div><!--end row-->

                    <div class="row">
                        <div class="col-lg-12">
						@foreach($tickets as $row)
						 <div class="card">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="media">
                                                <!--<img class="d-flex align-self-center me-3 rounded-circle" src="assets/images/small/opp-1.png" alt="" height="50">-->
                                                <div class="media-body align-self-center">
												@php
													if($row->status==2){ $status="Open";$color='#02c3b3';}
													elseif($row->status==3){ $status="In Progress";$color='#ff9f43';}
													elseif($row->status==4){ $status="Closed";$color='#f93333';}
												@endphp
												
                                                   <a href="javascript:;" id="{{$row->id}}" > <h4 class="mt-0 mb-1 font-16">Ticket ID : #{{$row->id}} {{ucwords($row->issue)}}&nbsp;:&nbsp;<span class="font-12" style="color:red;">Deleted</span></h4></a>
                                                </div><!--end media-body-->
                                            </div><!--end media-->
                                        </div><!--end col-->
                                        <div class="col-sm-6 d-flex  align-self-center flex-gap" >
											<div >
											<ul class="list-inline mb-0 text-muted">
													@php
													$agnt=\App\Models\AgentTicket::where('ticket_id',$row->id)->pluck('agent_id')->toArray();
													@endphp
													    <li class="list-inline-item me-2 st-agent">
														@foreach($users as $key=>$val)
																 @foreach($agnt as $a)
																	@if($val->id==$a) 
																		<span class="btn btn-info btn-icon-circle btn-icon-circle-sm1">
																		{!! substr($val->name,0,1) !!}
																		</span>
																		<span> {!! $val->name !!}</span>&nbsp;
																	@endif
																 @endforeach						 
													 @endforeach
														</li>
													
                                                </ul>                                             
											</div>

											<div class="text-end" >
											
												@if($row->has('ticketLabel') and !$row->ticketLabel->isEmpty())
                                                <label class="form-control t-label" style="border:1px dotted #f1b9b9">
												     {!! $row->ticketLabel[0]->label !!}
												</label>
											@endif
                                            </div>
											
                                            <div class="text-end" >
                                                 <label class="form-control br-v-blue" >
												 @if($row->has('customer'))
												     {!!$row->customer->name!!}
												 @endif
												 </label>
                                            </div>
											
                                            <div class="text-end">
                                                <button type="button"  class="btn btn-outline-primary btn-restore-ticket" data-ticketid="{{$row->id}}" style="padding:4px 10px;color:red;">Restore Ticket</button>
												&nbsp;<button type="button"  class="btn btn-outline-danger btn-delete-ticket" data-ticketid="{{$row->id}}" style="padding:4px 10px;color:#d33a3a;"><i class="fa fa-trash"></i></button>
                                            </div>
                                        </div><!--end col-->
										
                                    </div><!--end row-->
									
									<div class="row mt-1">
                                        <div class="col-sm-8">
                                            <div class="media">
                                                <!--<img class="d-flex align-self-center me-3 rounded-circle" src="assets/images/small/opp-1.png" alt="" height="50">-->
                                                <div class="media-body align-self-center">
                                                    <h4 class="mt-0 mb-1 font-14">{{$row->description}}</h4>
                                                </div><!--end media-body-->
                                            </div><!--end media-->
                                        </div><!--end col-->
										
										<div class="col-sm-4 align-self-center">
                                            <div class="text-end">
                                                <span><i class="mdi mdi-circle text-success me-1  font-10"></i></span>
                                                <label class="">Created At : {{$row->created_at}}</label>&nbsp;
												<span><i class="mdi mdi-circle text-info me-1  font-10"></i></span>
                                                <label><strong>Closed At</strong> :{{$row->closed_at}}</label>
                                            </div>
                                        </div><!--end col-->
										
									</div><!--end row-->

                                </div><!--end card-body-->
                            </div><!--end card-->
							
							@endforeach
							
                        </div><!--end col-->

                    </div><!--end row-->
					
				<div class="mt-3 mb-5 d-flex"  style="width:100%;justify-content: center;align-items:center;font-size:1rem !impotant;">
				   {!! $tickets->links('pagination::bootstrap-4') !!}
				</div>
				
				
	<!---  DETAILS MODAL ------------------------------------------------------------>			
				

	<div class="modal fade" data-bs-backdrop="static" data-bs-keyboard="false" id="modalTicketDetails" tabindex="-1" aria-hidden="true" style="display: none;">
				
		<div class="modal-dialog modal-fullscreen" style="width:90% !important; height:96% !important;margin-left:7%;margin-right:3%;margin-top:20px;">
			<div class="modal-content">
				<div class="modal-header" style="background:#433653;">
				  <h6 class="modal-title" id="exampleModalFullscreenLabel">TICKET DETAILS</h6>
				  <button type="button" class="btn-close btn-close-full-screen" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
				
						<!---  content here ------------>
				
				</div>
				
				<div class="modal-footer">
				  <button type="button" class="btn btn-secondary btn-pad btn-close-full-screen" data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>


	<div class="modal fade"  data-bs-backdrop="static" data-bs-keyboard="false" id="modalAssignAgent" tabindex="-1"  aria-hidden="true" style="display: none;">
		<div class="modal-dialog" role="document">
			<div class="modal-content pb-3">
			<form method="post" action="{{route('assign-ticket-agents')}}">
			  @csrf
			  <input type="hidden" name="agent_ticket_id" id="agent_ticket_id">
			  
				<div class="modal-header">
					<h6 class="modal-title m-0" id="exampleModalDefaultLabel">Assign Agent</h6>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div><!--end modal-header-->
				<div class="modal-body">
					<div class="row">
						<div class="col-lg-12  align-self-center">
						
						<label for="assign_agents">Assigned To</label>
							<select type="list" id="assignedAgents"  name="assign_agents[]" >
								 @foreach($users as $r)
								   <option value="{{$r->id}}" >{{$r->name}}</option>
								 @endforeach
							</select>         
						
						</div>
					</div><!--end row-->                                                      
				</div><!--end modal-body-->
				<div class="modal-footer">
					<button type="button" class="btn btn-danger btn-pad" data-bs-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-primary btn-pad">Assign Agents</button>
				</div><!--end modal-footer-->
			</form>
			
			</div><!--end modal-content-->
		</div><!--end modal-dialog-->
	</div>


@push('scripts')

<script>

new Selectr("#assignedAgents",{multiple:!0});

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

$("#btn_flt_clear").click(function()
{
	$("#start_date").val('');
	$("#end_date").val('');
	$("#flt_start_date").val('');
	$("#flt_end_date").val('');
	$("#flt_customer").val('');
});


$(".btn-close-full-screen").click(function()
{
	window.location.reload();
});


$(document).on("click",".btn-restore-ticket",function()
{

	var tid=$(this).data('ticketid');
	
	Swal.fire({
	  //title: "Are you sure?",
	  text: "Are you sure, You want to restore this ticket?",
	  //icon: "question",
	  showCancelButton: true,
	  confirmButtonColor: "#3085d6",
	  cancelButtonColor: "#d33",
	  confirmButtonText: "Yes, Restore it!"
	}).then((result) => {
	  if (result.isConfirmed) {
		
		$.ajax({
			url: "{{url('restore-ticket')}}"+"/"+tid,
			method: 'get',
			dataType:'json',
			success: function(result){
			if(result.status == 1)
			{
					toastr.success(result.msg);
					setTimeout(function(){window.location.reload();}, 1000);
			}
			else
			{
				toastr.error(result.msg);
			}
		}
		});

	  }
	});
});	



$(document).on('click','.btn-delete-ticket',function()
{
	Swal.fire({
	  //title: "Are you sure?",
	  text: "Are you sure, You want to permanently delete this ticket?",
	  //icon: "question",
	  showCancelButton: true,
	  confirmButtonColor: "#3085d6",
	  cancelButtonColor: "#d33",
	  confirmButtonText: "Yes, Delete it!"
	}).then((result) => {
	  if (result.isConfirmed) {
		
		var tid=$(this).data('ticketid');
		
		  $.ajax({
          url: "{{url('delete-ticket-permanently')}}"+'/'+tid,
          type: 'get',
		  dataType: 'json',
          //data:{'track_id':tid},
          success: function (res) 
		  {
			if(res.status==1)
			{
				 toastr.success(res.msg);
				 setTimeout(function(){window.location.reload();}, 1000);
			}
			else
			{
				 toastr.error(res.msg);
			}
          }
		});

	  }
	});

});


</script>
@endpush
@endsection

