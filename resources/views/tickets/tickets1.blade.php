@extends('layouts.master')
@section('title','Tickets')
@section('contents')

<style>
.w-select-7
{
	width:7rem;
}
.flex-gap
{
	gap:10px;
	justify-content:flex-end;
}

.br-v-blue
{
	border-color:#5656af !important;
}

.form-select-no-bg
{
	background-color: #fff !important;
}
.t-label
{
	color:#655e5e;
}

.btn-icon-circle {
    width: 25px !important;
    height: 25px !important;
}
.btn
{
	padding:3px; !important;
}
.btn-icon-circle-sm1 {
    width: 15px;
    height: 15px;
    line-height: 1;
    padding: 0;
	border:1px solid #d3d2d2;
}

.st-agent
{
	background-color:#e4e4e4;
	padding:4px; 
	border-radius:5px;
	min-width:150px;
	color:#544e4e;
}
.fs-11
{
	font-size:11px;
}

.user-br-color
{
	color:#322f2f;
	border:1px dotted #2a2727;
}
select option
{
	background:#fff !important;
}
.error
{
	color:red;
}

a>h4
{
	color:#2b54cd !important;
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
                                <h4 class="page-title">TICKETS</h4>
                            </div><!--end page-title-box-->
                        </div><!--end col-->
                    </div>
                    <!-- end page title end breadcrumb -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="row align-items-center">
                                        <div class="col">                      
                                            <h4 class="card-title">All Tickets by Owner</h4>             
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
                                                   <a href="#" data-bs-toggle="modal" data-bs-target="#exampleModalFullscreen" data-backdrop="static"> <h4 class="mt-0 mb-1 font-16">Ticket ID : #{{$row->id}} {{ucwords($row->issue)}} - 12345</h4></a>
                                                </div><!--end media-body-->
                                            </div><!--end media-->
                                        </div><!--end col-->
                                        <div class="col-sm-6 d-flex  align-self-center flex-gap" >
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
                                                <select class="form-select w-select-7 ticket_priority" data-ticketid="{{$row->id}}" style="background-color:{!!$row->priority_color!!}"	>
													@foreach($priority as $p)
													    <option value="{{$p->id}}" @if($p->id==$row->priority) selected @endif>{{$p->title}}</option>
													@endforeach
												</select>
                                            </div>
                                        </div><!--end col-->
										
                                    </div><!--end row-->
									
									<div class="row mt-1">
                                        <div class="col-sm-8">
                                            <div class="media">
                                                <!--<img class="d-flex align-self-center me-3 rounded-circle" src="assets/images/small/opp-1.png" alt="" height="50">-->
                                                <div class="media-body align-self-center">
                                                    <h4 class="mt-0 mb-1 font-14">This is Testing</h4>
                                                </div><!--end media-body-->
                                            </div><!--end media-->
                                        </div><!--end col-->
										<div class="col-sm-4 text-end" style="text-align:right;">
											<select class="form-select form-select-no-bg w-select-7 ticket_status" data-ticketid="{{$row->id}}" style="display:inline !important;" name="" id="">
												@foreach($tk_status as $r)
													<option value="{{$r->id}}" @if($r->id==$row->status) selected @endif>{{$r->status}}</option>
												@endforeach
											</select>
                                        </div><!--end col-->
                                    </div><!--end row-->

									<div class="row mt-1">
                                        <div class="col-sm-6">
                                            <div class="media">
                                                <div class="media-body align-self-center">
                                                    <ul class="list-inline mb-0 text-muted">
                                                        <li class="list-inline-item me-2 st-agent">
														<span class="btn btn-info btn-icon-circle btn-icon-circle-sm1">
														
														{!! $row->agent_first_char !!}

														</span>
														<span> {!! $row->agent_name !!}</span>&nbsp;
														<button type="button" class="btn btn-outline-secondary btn-icon-circle btn-icon-circle-sm1" id="{{$row->agent_id}}" data-ticketid="{{$row->id}}" style="float:right;" title="Remove"><i class="fa fa-times" aria-hidden="true"></i></button>
														</li>
                                                        <li class="list-inline-item align-item-center">
														@if($row->agent_count>1)
															<span class="btn-outline-secondary btn-icon-circle btn-icon-circle-sm user-br-color">{{$row->agent_count}}</span>&nbsp;
														@endif
															<span class="btn btn-outline-secondary btn-icon-circle btn-icon-circle-sm user-br-color" id="@if($row->has('agent') and !$row->agent->isEmpty())
														{!! $row->agent[0]->id !!}@endif" title="Add Agent" ><i class="fa fa-user-plus fs-11" ></i></span>
														</li>
														
                                                    </ul>                                                    
                                                </div><!--end media-body-->
                                            </div><!--end media-->
                                        </div><!--end col-->
										<div class="col-sm-6 align-self-center">
                                            <div class="text-end">
                                                <span><i class="mdi mdi-circle text-success me-1  font-10"></i></span>
                                                <label class="">Created : {{$row->created}}</label>&nbsp;
												<span><i class="mdi mdi-circle text-info me-1  font-10"></i></span>
                                                <label>Updated On :{{$row->updated_on}}</label>
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

				<div class="modal fade" data-bs-backdrop="static" data-bs-keyboard="false" id="exampleModalFullscreen" tabindex="-1" aria-labelledby="exampleModalFullscreenLabel" aria-hidden="true" style="display: none;">
				
					<div class="modal-dialog modal-fullscreen" style="width:90% !important; height:96% !important;margin-left:10%;margin-top:20px;">
					  <div class="modal-content">
						<div class="modal-header">
						  <h6 class="modal-title" id="exampleModalFullscreenLabel">Full screen modal</h6>
						  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						</div>
						<div class="modal-body">
						
						<div class="row">
						<div class="col-4">
						
						<div class="card">
                                <div class="card-body">
								
                                    <div class="row">
                                        <div class="col-sm-9">
                                                  <h4 class="mt-0 mb-1 font-16">Ticket ID : 11111 Testing this ticket</h4></a>
                                        </div><!--end col-->
                                        <div class="col-sm-3 d-flex  align-self-center flex-gap" >
                                            <div class="text-end">
                                                <select class="form-select w-select-7 ticket_priority" data-ticketid="" style="background-color:#e4e4e4;">
													    <option value="" selected>Select</option>
												</select>
                                            </div>
                                        </div><!--end col-->
										
                                    </div><!--end row-->

									<div class="row mt-1">
                                        <div class="col-sm-9">
                                         <p class="mt-0 mb-1 font-14">description of the ticvket  df fsd fsd f df dsf sdf sdf dsf sd fsd f dsf sdf dsf sd fd sf sdfds e wrw rwe rwe rwe rwe rwe r wer wer wer wer we rwe rwe rw r wr</p>
                                        </div><!--end col-->
                                        <div class="col-sm-3 d-flex  align-self-center flex-gap" >
                                            <div class="text-end">
												<button type="button" class="btn btn-outline-dark btn-icon-circle" style="width: 30px !important;height: 30px !important;"><i class="fa fa-edit"></i></button>
												<button type="button" class="btn btn-outline-danger btn-icon-circle" style="width: 30px !important;height: 30px !important;"><i class="fa fa-trash"></i></button>
                                            </div>
                                        </div><!--end col-->
										
                                    </div><!--end row-->
									
									
									<div class="row mt-2">
                                        <div class="col-sm-9">
                                         <p class="mt-0 mb-1 font-14">description of the ticvket  df fsd fsd f df dsf sdf sdf dsf sd fsd f dsf sdf dsf sd fd sf sdfds e wrw rwe rwe rwe rwe rwe r wer wer wer wer we rwe rwe rw r wr</p>
                                        </div><!--end col-->
                                        <div class="col-sm-3 d-flex  align-self-center flex-gap" >
                                            <div class="text-end">
												<button type="button" class="btn btn-outline-dark btn-icon-circle" style="width: 30px !important;height: 30px !important;"><i class="fa fa-edit"></i></button>
												<button type="button" class="btn btn-outline-danger btn-icon-circle" style="width: 30px !important;height: 30px !important;"><i class="fa fa-trash"></i></button>
                                            </div>
                                        </div><!--end col-->
										
                                    </div><!--end row-->
									
									
									
									
									
									

                                </div><!--end card-body-->
                            </div><!--end card-->

						
						</div>
						<div class="col-8">
						</div>
						</div>						
						
						</div>
						<div class="modal-footer">
						  <button type="button" class="btn btn-secondary"  data-bs-dismiss="modal">Close</button>
						</div>
					  </div>
					</div>
				  </div>


@push('scripts')

<script>

$(document).on("change",".ticket_priority",function()
{

	var tkt_id=$(this).data('ticketid');
	var pstat=$(this).val();
	
	$.ajax({
		url: "{{route('change-priority-status')}}",
		method: 'post',
		data: {'_token':"{{csrf_token()}}", 'priority':pstat,'ticket_id':tkt_id},
		dataType:'json',
		success: function(result){
			if(result.status == 1)
			{
				toastr.success(result.msg);
				$(this).val(result.data.priority_id);
				var $select = $('.ticket_priority[data-ticketid="' + result.data.id + '"]');
				$select.css('background-color', result.data.priority_color); 
			}
			else
			{
				toastr.error(result.msg);
			}
		}
		});

});	

$(document).on("change",".ticket_status",function()
{

	var tkt_id=$(this).data('ticketid');
	var tstatus=$(this).val();
	
	$.ajax({
		url: "{{route('change-ticket-status')}}",
		method: 'post',
		data: {'_token':"{{csrf_token()}}", 'ticket_status':tstatus,'ticket_id':tkt_id},
		dataType:'json',
		success: function(result){
			if(result.status == 1)
			{
				toastr.success(result.msg);
				$(this).val(result.data.status);
			}
			else
			{
				toastr.error(result.msg);
			}
		}
		});

});	


</script>
@endpush
@endsection

