@extends('layouts.master')
@section('title','Dashboard')
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

.form-select
{
    color: #000444;
    /*background-color: #72d5e3;*/
    background-repeat: no-repeat;
    background-position: right 1rem center;
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
                                <h4 class="page-title">Opportunities</h4>
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
                                            <h4 class="card-title">All Opportunities by Owner</h4>             
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
                                                    <h4 class="mt-0 mb-1 font-16">Ticket ID : #{{$row->id}} {{ucwords($row->issue)}} - 12345</h4>
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
                                                <select class="form-select w-select-7" style="background-color:{!!$row->priority_color!!} !important;"	>
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
                                                    <h4 class="mt-0 mb-1 font-15">This is Testing</h4>
                                                </div><!--end media-body-->
                                            </div><!--end media-->
                                        </div><!--end col-->
										<div class="col-sm-4  text-end" style="text-align:right;">
											<select class="form-select form-select-no-bg  w-select-7" style="display:inline !important;" name="" id="">
												@foreach($tk_status as $r)
													<option value="{{$r->id}}" @if($r->id==$row->status) selected @endif>{{$r->status}}</option>
												@endforeach
											</select>
                                        </div><!--end col-->
                                    </div><!--end row-->

									@php
									 $agent_name='';
									 $agent_id='0';
									 
									 if($row->has('agent') and !$row->agent->isEmpty())
									 {
										$agent_char= substr($row->agent[0]->name,0,1);
										$agent_name= $row->agent[0]->name;
										$agent_id=$row->agent[0]->id;
										$agent_count=$row->agent->count();
									 }
									@endphp
									
									<div class="row mt-1">
                                        <div class="col-sm-6">
                                            <div class="media">
                                                <div class="media-body align-self-center">
                                                    <ul class="list-inline mb-0 text-muted">
                                                        <li class="list-inline-item me-2 st-agent">
														<span class="btn btn-info btn-icon-circle btn-icon-circle-sm1">
														
														{!! $agent_char !!}

														</span>
														<span> {!! $agent_name !!}</span>&nbsp;
														<button type="button" class="btn btn-outline-secondary btn-icon-circle btn-icon-circle-sm1" id="{{$agent_id}}" data-ticketid="{{$row->id}}" style="float:right;" title="Remove"><i class="fa fa-times" aria-hidden="true"></i></button>
														</li>
                                                        <li class="list-inline-item align-item-center">
														@if($agent_count>1)
															<span class="btn-outline-secondary btn-icon-circle btn-icon-circle-sm user-br-color">{{$agent_count}}</span>&nbsp;
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
                                                <label class="">Created : {{date_create($row->created_at)->format('F D h:i A')}}</label>&nbsp;
												<span><i class="mdi mdi-circle text-info me-1  font-10"></i></span>
                                                <label>Updated On :{{\Carbon\Carbon::parse($row->updated_at)->diffForHumans()}}</label>
                                            </div>
                                        </div><!--end col-->
										
										
										
                                    </div><!--end row-->
                                </div><!--end card-body-->
                            </div><!--end card-->
							
							@endforeach
							
                        </div><!--end col-->

                    </div><!--end row-->
					
					<div class="mt-3 mb-5" style="width:100%;text-align:center;">
					{!! $tickets->links('pagination::bootstrap-4') !!}
					</div>

@push('scripts')

@endpush
@endsection

