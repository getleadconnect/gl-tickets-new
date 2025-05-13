<style>

.btn-outline-primary:hover{
    background-color:#e3e3f9 !important;
}
select option {
    color: #000 !important;
  }
 .btn-update
 {
	 margin-top:25px;padding:2px 5px;font-family:'Roboto','sans-serif' !important;
	 border:.001rem solid #7081b9;
 }
 .btn-outline-primary {
    --bs-btn-border-color: #b4c4db !important;
	--bs-btn-color:#949699 !important;
	color:#848484 !important;
 }
.btn-outline-primary:hover {
	color:#848484 !important;
 }
 
 .btn-outline-danger {
    --bs-btn-border-color: #b4c4db !important;
	--bs-btn-color:#949699 !important;
 }
 .hide{ display:none !important;}
 .div-attachement:hover .btn-file-action {  display: block !important;}
 .div-spare:hover .btn-spare-action { display: block !important;}
 
 .bg-soft-success:hover {
    background-color: rgba(34, 183, 131, 0.08) !important;
    color: #009113 !important;
}
.card-bdy{background:#e4e4e4;}
</style>

<div class="container-fluid">

		<div class="row">
			<div class="col-3">

			<div class="row">
			<div class="col-lg-8 align-self-center mb-3 mb-lg-0">
				<div class="met-profile-main">
					<div class="met-profile_user-detail">
						<h5 class="met-user-name">#{{$ticket->id}}- <span id="ticket-issue" >{{$ticket->issue}}</span></h5>                                                        
						<p class="mb-0 met-user-name-post">&nbsp;</p>
					</div>
				</div>                                                
			</div><!--end col-->
			<div class="col-lg-4 mb-3 mb-lg-0">
				<div class="text-end">
					<button type="button" id="btn-close-ticket" class="btn btn-outline-primary " data-ticketid="{{$ticket->id}}" style="padding:4px 10px;color:red !important;">Close Ticket</button>
				</div>
			</div><!--end col-->
			</div>
			
			<div class="row">
			<div class="col-lg-9 align-self-center mb-3 mb-lg-0">
				<div class="met-profile-main">
					<div class="met-profile_user-detail">
						<p class="mb-0 met-user-name-post" id="ticket-desc">{{$ticket->description}}</p>                                                        
					</div>
				</div>                                                
			</div><!--end col-->
			<div class="col-lg-3 mb-3 mb-lg-0">
				<div class="text-end">
					<button type="button" class="btn btn-outline-dark btn-icon-circle ticket_edit" id="{{$ticket->id}}" style="width:30px !important; height:30px !important;"><i class="fa fa-edit"></i></button>
					<button type="button" class="btn btn-outline-danger btn-icon-circle ticket_delete" id="{{$ticket->id}}" style="width:30px !important; height:30px !important;"><i class="fa fa-trash"></i></button>
				</div>	
					<!--- EDit Modal ----->
					<div id="divEditTicket" class="hide"  style="position:absolute;z-index:9999999;width:400px;">
						<div class="card">
								<div class="card-header" style="background:#433653;">
									<div class="row align-items-center">
										<div class="col">                      
											<h4 class="card-title" style="color:#fff;">Edit Ticket</h4>                      
										</div><!--end col-->                                                       
									</div>  <!--end row-->                                  
								</div><!--end card-header-->
								<div class="card-body card-bdy" >  
								<form id="editTicket">
								@csrf
								<input type="hidden" name="edit_ticket_id" value="{{$ticket->id}}">
								
									<div class="form-group mb-3 row">
										<label class="form-label">Issue</label>
										<div class="col-lg-12 col-xl-12">
											<input type="text" class="form-control" id="edit_issue" name="edit_issue" value="{{$ticket->issue}}" required>
										</div>
									</div>
									
									<div class="form-group mb-3 row">
										<label class="form-label">Description</label>
										<div class="col-lg-12 col-xl-12">
											<textarea rows=5 class="form-control" id="edit_description" name="edit_description" >{{$ticket->description}}</textarea>
										</div>
									</div>
									
									
									<div class="form-group mb-3 row">
										<div class="col-lg-12 col-xl-12 text-end">
											<button type="submit" class="btn btn-primary btn-plr">Submit</button>
											<button type="button" class="btn btn-danger btn-plr btn-edit-cancel" >Cancel</button>
										</div>
									</div>   
								</form>
								</div>                                            
							</div>
					</div>
				<!---- modal End ------------->

			</div><!--end col-->
			</div>

			<!--<div class="row mt-2 ">
				<div class="col-12 col-lg-12">
					<p class="mb-0 p-2 bg-soft-success rounded font-16">Invoice Status:&nbsp;</b>Pending</p>
				</div>
			</div>-->

			<div class="media mt-3">
				<img src="assets/images/users/user-5.jpg" alt="" class="thumb-md rounded-circle me-2">                                       
				<div class="media-body align-self-center text-truncate">
					<ul class="p-0 list-inline mb-0">
						<li class="list-inline-item">Customer</li>
					</ul>
					<h5 class="m-0 text-dark">{{$ticket->customer->name}}</h5>
				</div><!--end media-body-->
			</div>

			<div class="row mt-3">
			<div class="col-12 col-lg-12">

				<ul class="list-unstyled personal-detail mb-0" style="font-size:14px;">
					<li class=""><i class="las la-phone mr-2 text-secondary font-22 align-middle"></i> <b> phone </b> : {{"+".$ticket->customer->country_code}} {{$ticket->customer->contact}}</li>
					<li class="mt-2"><i class="las la-envelope text-secondary font-22 align-middle mr-2"></i> <b> Email </b> : {{$ticket->customer->email}}</li>
				</ul>
			   
			</div><!--end col-->
			</div>
								
			<p class="mt-4" style="font-size:15px;"><b>Update Ticket</b></p>
			
			<div class="row mt-3">
			<div class="col-12 col-lg-12">

				<input type="hidden" id="update_ticket_id" value="{{$ticket->id}}">
				
				<div class="row">
				<div class="col-6">
					<div class="mb-3">
						<label for="ticket_status">Ticket Status</label>
						<select class="form-select" id="tkt_status" name="tkt_status">
						<option value="" selected disabled>Select</option>
						 @foreach($tstatus as $key=>$val)
						 <option value="{{$val->id}}" @if($ticket->status==$val->id) Selected @endif >{{$val->status}}</option>
						 @endforeach
						</select>
					</div>
				</div>
				<div class="col-6">
					<div class="mb-3">
						<label for="priority">Priority</label>
						<select class="form-select" id="tkt_priority" name="tkt_priority" style="color:{{$ticket->ticketPriority->color}};font-weight:600;">
						<option value="" selected disabled >Select</option>
						 @foreach($priority as $key=>$val)
						 <option value="{{$val->id}}" @if($ticket->priority==$val->id) Selected @endif >{{$val->title}}</option>
						 @endforeach
						</select>
					</div>
				</div>
				</div>
				
				<div class="row">
				<div class="col-10">
					<div class="mb-3">
						<label for="assigned_to">Assigned To</label>
						@php
							$agnt=\App\Models\AgentTicket::where('ticket_id',$ticket->id)->pluck('agent_id')->toArray();
						@endphp
						<select class="form-select" id="tkt_assigned_to" name="tkt_assigned_to" multiple >
						<option value="" disabled>Select</option>
						 @foreach($user as $key=>$val)
						 <option value="{{$val->id}}" 
							 @foreach($agnt as $a)
								@if($val->id==$a) selected @endif
							 @endforeach						 
							  >{{$val->name}}</option>
						 @endforeach
						</select>
					</div>
				</div>
				<div class="col-2">
				<button class="btn btn-sm btn-soft-primary btn-update" style="" id="btn_add_remove_agent" title="Update">Update</button>
				</div>
				
				</div>
				
				<div class="row">
				<div class="col-10">
					<div class="mb-3">
						<label for="notify_to">Notify To</label>
						
						@php
							$agnt=\App\Models\NotifyTicket::where('ticket_id',$ticket->id)->pluck('agent_id')->toArray();
						@endphp
						
						<select class="form-select" id="tkt_notify_to" name="tkt_notify_to" multiple >
						<option value="" disabled>Select</option>
						 @foreach($user as $key=>$val)
						 <option value="{{$val->id}}"
							@if(!empty($agnt))
								@foreach($agnt as $n)
									@if($val->id==$n) selected @endif
								@endforeach
							@endif
								>{{$val->name}}</option>
						 @endforeach
						</select>
					</div>
				</div>
				<div class="col-2">
				<button class="btn btn-sm btn-soft-primary btn-update"  id="btn_add_remove_notify" title="Update">Update</button>
				</div>
				</div>
				
				<div class="row">
				<div class="col-6">
					<div class="mb-3" id="foo">
						<label for="due_on">Due Date</label>
						<input type="date" class="form-control" id="tkt_due_date" name="tkt_due_date" placeholder="Due Date" value="{{date_create($ticket->due_date)->format('Y-m-d')}}" >
					</div>
					</div>
					<div class="col-6">
					<div class="mb-3">
					@php
						$tm=strtotime($ticket->due_date);
						$tm1=date('h:i:s',$tm);
					@endphp
						<label for="due_time">Time</label>
						<input type="time" class="form-control" id="tkt_due_time" name="tkt_due_time"  placeholder="Time" value="{{$tm1}}">
					</div>
				</div>
				</div>
				
				<div class="mb-3">
					<label for="ticket_label">Branch</label>
					<select class="form-select" id="tkt_branch" name="tkt_branch">
					<option value="" selected >Select</option>
						@foreach($branch as $key=>$val)
						 <option value="{{$val->id}}" @if($val->id==$ticket->branch_id) Selected @endif >{{$val->branch}}</option>
						@endforeach	 
					</select>
				</div>
				
				<div class="mb-3">
					<label for="ticket_label">Ticket Label</label>
					<select class="form-select" id="tkt_ticket_label" name="tkt_ticket_label">
					<option value="" selected disabled>Select</option>
						@foreach($tlabel as $key=>$val)
						 <option value="{{$val->id}}" @if($val->id==$ticket->ticket_label) Selected @endif >{{$val->label}}</option>
						@endforeach	 
					</select>
				</div>
			   
			   
			   @if($ticket->additional_data!=null)
				   
			   <p class="mb-2" style="font-size:15px;"><b>Additional Fields</b></p>
				   
				   @foreach($ticket->additional_data as $key=>$row)

					@if($row['type']=="select")
					
					<div class="form-group mb-3 row">
						<label class="form-label">{{$row['field_title']}}</label>
						<div class="col-lg-12 col-xl-12">
						<select class="form-select additional_fields" id="{{$row['taf_id']}}" data-fieldid="{{$row['field_id']}}" name="{{$row['field_id']}}">
						<option value="" disabled>Select</option>
						@if(is_array($row['values']))
							@foreach($row['values'] as $key=>$r)
								<option value="{{$r['id']}}" @if($r['id']==$row['user_input']) selected @endif >{{$r['value']}}</option>
							@endforeach
						@endif
						</select>	
						</div>
					</div>

					@else
						
					<div class="form-group mb-3 row">
						<label class="form-label">{{$row['field_title']}}</label>
						<div class="col-lg-12 col-xl-12">
						<input type="{{$row['type']}}" class="form-control additional_fields" id="{{$row['taf_id']}}" data-fieldid="{{$row['field_id']}}" name="{{$row['field_id']}}"  value="{{$row['values']}}">
						</div>
					</div>
									
					@endif
			   
				   @endforeach
			   @endif
			   
			</div><!--end col-->
			</div>
			
		
		</div>
		

		<div class="col-9 col-lg-9">

		<!-- end page title end breadcrumb -->
		<div class="row">
			<div class="col-12">
				<div class="card">
					<div class="card-body p-0">    
						<!-- Nav tabs -->
					<div class="row">
						<div class="col-9 col-lg-9">
						<ul class="nav nav-tabs" role="tablist" style="border-bottom:none;">
							<li class="nav-item">
								<a class="nav-link active" data-bs-toggle="tab" href="#Post" role="tab" aria-selected="true"><strong>ACTIVITY</strong></a>
							</li>
							<li class="nav-item">
								<a class="nav-link" data-bs-toggle="tab" href="#logNote" role="tab" aria-selected="false"><strong>LOG NOTE</strong></a>
							</li>                                                
							<li class="nav-item">
								<a class="nav-link" data-bs-toggle="tab" href="#task" role="tab" aria-selected="false"><strong>TASK</strong></a>
							</li>
							<li class="nav-item">
								<a class="nav-link" data-bs-toggle="tab" href="#attachement" role="tab" aria-selected="false"><strong>ATTACHEMENTS</strong></a>
							</li>
							
							<li class="nav-item">
								<a class="nav-link" data-bs-toggle="tab" href="#spare_parts" role="tab" aria-selected="false"><strong>SPARE PARTS</strong></a>
							</li>
							
						</ul>
						</div>
						<div class="col-3 col-lg-3 text-end" style="padding:5px 15px;">
						
						<button type="button" id="btn-add-invoice" class="btn btn-primary " data-ticketid="{{$ticket->id}}" style="padding:4px 10px;">Add Invoice</button>
						
						<!--  add invoice ------------------------>
								
								<div id="addInvoice" class="hide"  style="position:absolute;z-index:9999999;right:10px;top:50px;">
									<div class="card">
											<div class="card-header" style="background:#433653;">
												<div class="row align-items-center">
													<div class="col">                      
														<h4 class="card-title" style="color:#fff;">Add Invoice</h4>                      
													</div><!--end col-->                                                       
												</div>  <!--end row-->                                  
											</div><!--end card-header-->
											<div class="card-body card-bdy" >  
											
											<form id="saveInvoice">
											@csrf
											<input type="hidden" name="inv_ticket_id" value="{{$ticket->id}}">
											
												<div class="form-group mb-3 row">
													<label style="text-align:left">Service Charge</label>
													<div class="col-lg-12 col-xl-12">
														<input type="number" class="form-control" id="service_charge" name="service_charge" required>
													</div>
												</div>
												
												<div class="form-group mb-3 row">
													<label style="text-align:left">Payment Mode</label>
													<div class="col-lg-12 col-xl-12">
														<select class="form-select" id="payment_mode" name="payment_mode" required >
														<option value="" selected>select</option>
														<option value="offline">Offline</option>
														<option value="online">Online</option>
														</select>
													</div>
												</div>
												
												<div class="form-group mb-3 row">
													<div class="col-lg-12 col-xl-12 text-end">
														<button type="submit" class="btn btn-primary btn-plr"> Submit </button>
														<button type="button" class="btn btn-danger btn-plr btn-close-invoice" >Cancel</button>
													</div>
												</div>   
											</form>
											</div>                                            
										</div>
								</div>

						</div>
					</div>

					<hr style="margin:0px;">
						<!-- Tab panes -->
						<div class="tab-content">
							<div class="tab-pane p-3 active" id="Post" role="tabpanel">
								<div class="row">
									<div class="col-lg-12">

						<div class="slimscroll activity-scroll">
							<div class="activity">
							
							@foreach($ticket->activity as $key=>$val)
								<div class="activity-info mt-3">
									<div class="icon-info-activity">
										<i class="las la-check-circle bg-soft-primary"></i>
									</div>
									<div class="activity-info-text">
										<div class="d-flex justify-content-between align-items-center mb-2">
											<h6 class="m-0 w-75">{{$val->title}}</h6>
										</div>
										<p class="text-muted d-block" style="font-size:12px;margin-bottom:2px;">
											@php
												$cdt=date_create($val->created_at);
											@endphp
											
										{{$cdt->format('M d') ." at ".$cdt->format('h:m A')}}</p>
									
										<p class="text-muted">{{$val->description}}	</p>
									</div>
								</div> 
							@endforeach
																									 
							</div><!--end activity-->
							</div><!--end activity-scroll-->
									
						</div><!--end col-->

					</div><!--end row-->  
				</div>
							
			
						
				<div class="tab-pane p-3" id="logNote" role="tabpanel">
								<div class="row">                    
									<div class="col-md-12 col-lg-12 text-end">
									<button type="button" class="btn btn-danger btn-plr btn-add-log" id="{{$ticket->id}}" >Add <i class="fa fa-plus"></i></button>
									</div><!--end col-->
								</div><!--end row-->
								<div class="row">
								<div class="col-12 col-lg-12">
								
								<div class="slimscroll activity-scroll">
								<div class="activity list-log-notes"> <!--- for log note --------->
								
								@foreach($lognotes as $key=>$val)
									<div class="activity-info mt-3">
										<div class="icon-info-activity">
											<i class="las la-check-circle bg-soft-primary"></i>
										</div>
										<div class="activity-info-text">
											<div class="d-flex justify-content-between align-items-center mb-2">
												<h6 class="m-0 w-75">{{$val->name}} added a log.</h6>
											</div>
											<p class="text-muted d-block" style="font-size:12px;margin-bottom:2px;">
												@php
													$cdt=date_create($val->created_at);
												@endphp
												
											{{$cdt->format('M d') ." at ".$cdt->format('h:m A')}}</p>
										
											<p class="text-muted">{{$val->description}}	</p>
										</div>
									</div> 
								@endforeach
																										 
								</div><!--end activity-->
								</div><!--end activity-scroll-->

								</div>
								</div>
								
								
								<!--  add new notes ------------------------>
								
								<div id="addLogNote" class="hide"  style="position:absolute;z-index:9999999;right:10px;top:50px;">
									<div class="card">
											<div class="card-header" style="background:#433653;">
												<div class="row align-items-center">
													<div class="col">                      
														<h4 class="card-title" style="color:#fff;">Add Log Note</h4>                      
													</div><!--end col-->                                                       
												</div>  <!--end row-->                                  
											</div><!--end card-header-->
											<div class="card-body card-bdy">  
											<form id="saveLogNote">
											@csrf
											<input type="hidden" name="log_ticket_id" value="{{$ticket->id}}">
											
												<div class="form-group mb-3 row">
													<label class="form-label">Enter Log Here</label>
													<div class="col-lg-12 col-xl-12">
														<textarea rows=10 class="form-control" id="log_note" name="log_note" ></textarea>
													</div>
												</div>
												<div class="form-group mb-3 row">
													<div class="col-lg-12 col-xl-12 text-end">
														<button type="submit" class="btn btn-primary btn-plr">Save Note</button>
														<button type="button" class="btn btn-danger btn-plr btn-close-log" >Cancel</button>
													</div>
												</div>   
											</form>
											</div>                                            
										</div>
								</div>
	
				</div>                                                
				


				<div class="tab-pane p-3" id="task" role="tabpanel">
				
								<div class="row">                    
									<div class="col-md-12 col-lg-12 text-end">
									<button type="button" class="btn btn-danger btn-plr btn-add-task" >Add <i class="fa fa-plus"></i></button>
									</div><!--end col-->
								</div><!--end row-->
				
				
								<div class="row">
									<div class="col-lg-12 col-xl-12">
										
										<div class="slimscroll activity-scroll">
										<div class="activity list-task"> <!--- for list task --------->
										
										@foreach($tasks as $key=>$val)
											<div class="activity-info mt-3">
												<div class="icon-info-activity">
													<i class="las la-check-circle bg-soft-primary"></i>
												</div>
												<div class="activity-info-text">
													<div class="d-flex justify-content-between align-items-center mb-2">
														<h6 class="m-0 w-75">{{$val->task_name}}</h6>
													</div>
													<p class="text-muted d-block" style="font-size:12px;margin-bottom:2px;">
														@php
															$cdt=date_create($val->created_at);
														@endphp
														
													{{$cdt->format('M d') ." at ".$cdt->format('h:m A')}}</p>
												
													<p class="text-muted" style="margin-bottom:2px;">Subject: {{$val->description}}	</p>
													<p class="text-muted" style="margin-bottom:2px;"><i class="far fa-user"></i>&nbsp;&nbsp;&nbsp;&nbsp;Assigned To: {{$val->assigned_to}}	</p>
													<p class="text-muted" style="margin-bottom:2px;"><i class="far fa-calendar"></i>&nbsp;&nbsp;&nbsp;&nbsp;Scheduled Date: {{$val->expires_at}}	</p>
												</div>
											</div> 
										@endforeach
																												 
										</div><!--end activity-->
										</div><!--end activity-scroll-->	
	
									</div> <!--end col--> 
								</div><!--end row-->
								
							<!-- Adding new task ----------------------------------------------------------->
							
								<div id="addNewTicketTask" class="hide"  style="position:absolute;z-index:9999999;right:10px;top:50px;width:40%;">
									<div class="card">
											<div class="card-header" style="background:#433653;">
												<div class="row align-items-center">
													<div class="col">                      
														<h4 class="card-title" style="color:#fff;">Add New Task</h4>                      
													</div><!--end col-->                                                       
												</div>  <!--end row-->                                  
											</div><!--end card-header-->
											<div class="card-body card-bdy">  
											<form id="saveNewTicketTask">
											@csrf
											<input type="hidden" name="task_ticket_id" id="task_ticket_id"  value="{{$ticket->id}}">
											
												<div class="form-group mb-3 row">
													<label class="form-label">Task Name</label>
													<div class="col-lg-12 col-xl-12">
														<input type="text" class="form-control" id="task_name" name="task_name" required>
													</div>
												</div>
												
												
												<div class="form-group mb-3 row">
													<label class="form-label">Description</label>
													<div class="col-lg-12 col-xl-12">
														<textarea rows=2 class="form-control" id="task_description" name="task_description" required></textarea>
													</div>
												</div>
												
												
												<div class="row">
													<div class="col-6">
														<div class="mb-3">
															<label for="assigned_to">Assigned To</label>
															
															<select class="form-select" id="task_assigned_to" name="task_assigned_to[]" required >
															 @foreach($user as $key=>$val)
															 <option value="{{$val->id}}" >{{$val->name}}</option>
															 @endforeach
															</select>
															
														</div>
													</div>
													<div class="col-6">
														<div class="mb-3">
															<label for="notify_to">Task Status</label>
															<select class="form-select" id="task_status" name="task_status" required>
															<option value="" selected disabled>Select</option>
															<option value="2">Open</option>
															<option value="3">In Progress</option>
															<option value="4">Closed</option>
															</select>
														</div>
													</div>
												</div>
												
												<div class="row">
													<div class="col-6">
														<div class="mb-3">
															<label for="assigned_to">Date</label>
															<input type="date" class="form-control" id="task_date" name="task_date" required> 
														</div>
													</div>
													<div class="col-6">
														<div class="mb-3">
															<label for="assigned_to">Date</label>
															<input type="time" class="form-control" id="task_time" name="task_time" required> 
														</div>
													</div>
													</div>
																								
												<div class="form-group mb-3 row">
													<div class="col-lg-12 col-xl-12 text-end">
														<button type="submit" class="btn btn-primary btn-plr">Save Task</button>
														<button type="button" class="btn btn-danger btn-plr btn-close-task" >Cancel</button>
													</div>
												</div>   
											</form>
											</div>                                            
										</div>
								</div>
								
				</div>
				
				<div class="tab-pane p-3" id="attachement" role="tabpanel">
								<div class="row">                    
									<div class="col-md-12 col-lg-12 text-end">
									<button type="button" class="btn btn-danger btn-plr btn-attach" >Attach File &nbsp;<i class="fa fa-plus"></i></button>
									</div><!--end col-->
								</div><!--end row-->
								  
								<div id="grid" class="row g-0 mt-3">
								
								<div class="slimscroll activity-scroll">
								<div class="activity list-files"> 
								
								@foreach($tfiles as $key=>$val)
									<div class="activity-info mt-3 d-flex div-attachement" style="background-color:#f9f9f9;padding:10px;">
										<div class="icon-info-activity">
											<i class="las la-file bg-soft-primary"></i>
										</div>
										<div class="activity-info-text ">
											<div class="d-flex justify-content-between align-items-center mb-2">
												<h6 class="m-0 w-75"><a href="{{url('/uploads/ticket_files').'/'.$val->file_name}}" target="_blank" style="color:#6985f1;"> {{$val->file_name}}</a></h6>
											</div>
											<p class="text-muted d-block" style="font-size:12px;margin-bottom:2px;">
												@php
													$cdt=date_create($val->created_at);
												@endphp
												
											{{$cdt->format('M d') ." at ".$cdt->format('h:m A')}} &nbsp;|&nbsp;Size: {{$val->size}}</p>
										</div>
										
										<div class="text-end btn-file-action hide">
											<span class="d-flex" ><a href="{{url('/uploads/ticket_files').'/'.$val->file_name}}" class="btn btn-outline-primary btn-icon-circle btn-icon-circle-sm" download  title="download"><i class="fas fa-download"></i></a>&nbsp;
											<a href="javascript:;" class="btn btn-outline-danger btn-icon-circle btn-icon-circle-sm btn-file-delete" id="{{$val->id}}" title="Delete" ><i class="fas fa-trash"></i></a></span>
										</div>
									
									</div> 
								@endforeach
																																		 
								</div><!--end activity-->
								</div><!--end activity-scroll-->
                
								</div><!--end row-->
								
								<div id="attachFile" class="hide"  style="position:absolute;z-index:9999999;right:10px;top:50px;">
									<div class="card">
											<div class="card-header" style="background:#433653;">
												<div class="row align-items-center">
													<div class="col">                      
														<h4 class="card-title" style="color:#fff;">Attach File</h4>                      
													</div><!--end col-->                                                       
												</div>  <!--end row-->                                  
											</div><!--end card-header-->
											<div class="card-body card-bdy">  
											<form id="saveAttachedFile" enctype="multipart/form-data">
											@csrf
											<input type="hidden" name="file_ticket_id" id="file_ticket_id"  value="{{$ticket->id}}">
											
												<div class="form-group mb-3 row">
													<label class="form-label">Select Your File</label>
													<div class="col-lg-12 col-xl-12">
														<input type="file" class="form-control" id="upload_file" name="upload_file[]" multiple required>
													</div>
												</div>
																									
												<div class="form-group mb-3 row">
													<div class="col-lg-12 col-xl-12 text-end">
														<button type="submit" class="btn btn-primary btn-plr btn-save-file"> Submit </button>
														<button type="button" class="btn btn-danger btn-plr btn-close-attach" >Cancel</button>
													</div>
												</div>
												
											</form>
											</div>                                            
										</div>
								</div>
					</div> 
					
					
					
					<div class="tab-pane p-3" id="spare_parts" role="tabpanel">
								<div class="row">                    
									<div class="col-md-12 col-lg-12 text-end">
									<button type="button" class="btn btn-danger btn-plr btn-add-spare" id="{{$ticket->id}}" >Add <i class="fa fa-plus"></i></button>
									</div><!--end col-->
								</div><!--end row-->
								<div class="row">
								<div class="col-12 col-lg-12">
								
								<div class="slimscroll activity-scroll">
								<div class="activity list-spare-parts"> 
								
								@foreach($spares as $key=>$val)
									<div class="activity-info mt-3 div-spare">
										<div class="icon-info-activity">
											<i class="las la-check-circle bg-soft-primary"></i>
										</div>
										<div class="activity-info-text">
											<div class="d-flex justify-content-between align-items-center mb-2">
												<h6 class="m-0 w-75">{{$val->user_name}} added a spare parts.</h6>
											</div>
											<p class="text-muted d-block" style="font-size:12px;margin-bottom:2px;">
												@php
													$cdt=date_create($val->created_at);
												@endphp
												
											{{$cdt->format('M d') ." at ".$cdt->format('h:m A')}}</p>
										
											<p class="text-muted">Product:{{$val->name}}&nbsp;|&nbsp;Brand:{{$val->brand}}
												&nbsp;|&nbsp;category: {{$val->category}}&nbsp;|&nbsp;No of Items:{{$val->quantity}}&nbsp;|&nbsp;Cost:{{$val->total_amount}}</p>
										</div>
										<div class="text-end btn-spare-action hide">
											<a href="javascript:;" class="btn btn-outline-danger btn-icon-circle btn-icon-circle-sm btn-spare-delete" id="{{$val->id}}" title="Delete" ><i class="fas fa-trash"></i></a>
										</div>
									</div> 
								@endforeach
																										 
								</div><!--end activity-->
								</div><!--end activity-scroll-->

								</div>
								</div>
								
								
								<!--  add new notes ------------------------>
								
								<div id="addSpareParts" class="hide"  style="position:absolute;z-index:9999999;right:10px;top:50px;">
									<div class="card">
											<div class="card-header" style="background:#433653;">
												<div class="row align-items-center">
													<div class="col">                      
														<h4 class="card-title" style="color:#fff;">Add Spare Parts</h4>                      
													</div><!--end col-->                                                       
												</div>  <!--end row-->                                  
											</div><!--end card-header-->
											<div class="card-body card-bdy">  
											<form id="saveSpareParts">
											@csrf
											<input type="hidden" name="spare_ticket_id" value="{{$ticket->id}}">
											
												<div class="form-group mb-3 row">
													<label class="form-label">Select Product</label>
													<div class="col-lg-12 col-xl-12">
														<select class="form-select" id="product_id" name="product_id" >
														<option value="">select</option>
														@foreach($product as $key=>$val)
														<option value="{{$val->id}}">{{$val->name}}</option>
														@endforeach
														</select>
													</div>
												</div>
											
												<div class="form-group mb-3 row">
													<label class="form-label">Enter Qty</label>
													<div class="col-lg-12 col-xl-12">
														<input type="number" class="form-control" id="quantity" name="quantity" >
													</div>
												</div>
												<div class="form-group mb-3 row">
													<div class="col-lg-12 col-xl-12 text-end">
														<button type="submit" class="btn btn-primary btn-plr"> Submit </button>
														<button type="button" class="btn btn-danger btn-plr btn-close-spare" >Cancel</button>
													</div>
												</div>   
											</form>
											</div>                                            
										</div>
								</div>
	
				</div>                                                
				

				
							
						</div>        
					</div> <!--end card-body-->                            
				</div><!--end card-->
			</div><!--end col-->
		</div><!--end row-->
</div>
</div><!---  end row -->
			
</div><!-- container -->						

<script>

var BASEURL="{{url('/')}}";

new Selectr("#task_assigned_to",{multiple:!0});
new Selectr("#tkt_assigned_to",{multiple:!0});
new Selectr("#tkt_notify_to",{multiple:!0});

/*var elem=document.getElementById("tkt_due_date");
const datePicker=new Datepicker(elem,{'autohide':true});
*/
$("#btn_add_remove_notify").prop('disabled',true);
$("#btn_add_remove_agent").prop('disabled',true);


toastr.options = {
  "debug": false,
  "positionClass": "toast-top-center",
  "onclick": null,
  "fadeIn": 300,
  "fadeOut": 1000,
  "timeOut": 5000,
  "extendedTimeOut": 1000
}

$(".btn-close-log").click(function()
{
	$("#addLogNote").removeClass('show');
	$("#addLogNote").addClass('hide');
	$("#log_note").val("");
});

$(".btn-add-log").click(function()
{
	$("#addLogNote").removeClass('hide');
	$("#addLogNote").addClass('show');
});

$(".btn-add-task").click(function()
{
	$("#addNewTicketTask").removeClass('hide');
	$("#addNewTicketTask").addClass('show');
});

$(".btn-close-task").click(function()
{
	$("#addNewTicketTask").removeClass('show');
	$("#addNewTicketTask").addClass('hide');
});


$(".btn-attach").click(function()
{
	$("#attachFile").removeClass('hide');
	$("#attachFile").addClass('show');
});

$(".btn-close-attach").click(function()
{
	$("#attachFile").removeClass('show');
	$("#attachFile").addClass('hide');
});

$(".btn-add-spare").click(function()
{
	$("#addSpareParts").removeClass('hide');
	$("#addSpareParts").addClass('show');
});

$(".btn-close-spare").click(function()
{
	$("#addSpareParts").removeClass('show');
	$("#addSpareParts").addClass('hide');
});

$("#btn-add-invoice").click(function()
{
	$("#addInvoice").removeClass('hide');
	$("#addInvoice").addClass('show');
});

$(".btn-close-invoice").click(function()
{
	$("#addInvoice").removeClass('show');
	$("#addInvoice").addClass('hide');
});

$(".ticket_edit").click(function()
{
	$("#divEditTicket").removeClass('hide');
	$("#divEditTicket").addClass('show');
	
	$("#edit_issue").val($("#ticket-issue").html());
	$("#edit_description").html($("#ticket-desc").html());
	
});

$(".btn-edit-cancel").click(function()
{
	$("#divEditTicket").removeClass('show');
	$("#divEditTicket").addClass('hide');
});



var log_validate=$('#saveLogNote').validate({ 
	
		rules: {
            log_note: {required: true,},
           },

	submitHandler: function(form) 
	{
		$.ajax({
		url: "{{route('save-log-note')}}",
		method: 'post',
		data: $('#saveLogNote').serialize(),
		dataType:'json',
		
		success: function(result){
			if(result.status == 1)
			{
				toastr.success(result.msg);
				$("#log_note").val("");
				$("#addLogNote").removeClass('show');
				$("#addLogNote").addClass('hide');
			
			    var dat='<div class="activity-info mt-3"><div class="icon-info-activity"> <i class="las la-check-circle bg-soft-primary"></i></div>'+ 
					'<div class="activity-info-text"><div class="d-flex justify-content-between align-items-center mb-2">'+
					'<h6 class="m-0 w-75">'+result.data.name+' added a log.</h6> </div>'+
					'<p class="text-muted d-block" style="font-size:12px;margin-bottom:2px;">'+result.data.created_date+'<p class="text-muted">'+result.data.description+'</p></div></div>';

				$(".list-log-notes").prepend(dat);
			}
			else
			{
				toastr.error(result.msg);
			}
		}
		});
	  }
	});	


var att_validate=$('#saveAttachedFile').validate({ 
	
		rules: {
            upload_file: {required: true,},
           },
});



$("form#saveAttachedFile").submit(function(e) 
	{
		e.preventDefault();
		
		var formData= new FormData(document.getElementById('saveAttachedFile'));
		$.ajax({
		url: "{{route('ticket-file-upload')}}",
		method: 'post',
		data: formData,
		dataType:'json',
		contentType: false,
         cache: false,
		processData:false,
		
		success: function(result){
			if(result.status == 1)
			{
				toastr.success(result.msg);
				$("#upload_file").val("");
				
				 $.each(result.data.tk_files, function (indexInArray, valueOfElement) { 
                     alert(valueOfElement.file_name);
					 
					var dat='<div class="activity-info mt-3 d-flex div-attachement" style="background-color:#f9f9f9;padding:10px;">'+
							'<div class="icon-info-activity"><i class="las la-file bg-soft-primary"></i></div><div class="activity-info-text ">'+
							'<div class="d-flex justify-content-between align-items-center mb-2"><h6 class="m-0 w-75"><a href="'+BASEURL+'/uploads/ticket_files/'+valueOfElement.file_name+'" target="_blank" style="color:#6985f1;">'+valueOfElement.file_name+'</a></h6>'+
							'</div><p class="text-muted d-block" style="font-size:12px;margin-bottom:2px;">'+valueOfElement.created_at+'</div><div class="text-end btn-file-action hide">'+
							'<span class="d-flex" ><a href="'+BASEURL+'/uploads/ticket_files/'+valueOfElement.file_name+'" class="btn btn-outline-primary btn-icon-circle btn-icon-circle-sm" download  title="download"><i class="fas fa-download"></i></a>&nbsp;'+
							'<a href="javascript:;" class="btn btn-outline-danger btn-icon-circle btn-icon-circle-sm btn-file-delete" id="{{$val->id}}" title="Delete" >'+
							'<i class="fas fa-trash"></i></a></span></div></div>';
				 
				 $(".list-files").prepend(dat);
                });
			}
			else
			{
				toastr.error(result.msg);
			}
		}
		});
 });


var log_validate=$('#saveNewTicketTask').validate({ 
	
		rules: {
            task_name: {required: true,},
			description: {required: true,},
			task_assigned_to: {required: true,},
			task_type: {required: true,},
			task_date: {required: true,},
			task_time: {required: true,},
           },

	submitHandler: function(form) 
	{
		$.ajax({
		url: "{{route('save-new-ticket-task')}}",
		method: 'post',
		data: $('#saveNewTicketTask').serialize(),
		dataType:'json',
		
		success: function(result){
			if(result.status == 1)
			{
				toastr.success(result.msg);
				$("#saveNewTicketTask")[0].reset();
				$("#addNewTicketTask").removeClass('show');
				$("#addNewTicketTask").addClass('hide');
			   var dat='<div class="activity-info mt-3"><div class="icon-info-activity"><i class="las la-check-circle bg-soft-primary"></i></div>'+
						'<div class="activity-info-text"><div class="d-flex justify-content-between align-items-center mb-2"><h6 class="m-0 w-75">'+result.data.task_name+'</h6></div>'+
						'<p class="text-muted d-block" style="font-size:12px;margin-bottom:2px;">'+
						'<p class="text-muted" style="margin-bottom:2px;">Subject: '+result.data.description+'</p>'+
						'<p class="text-muted" style="margin-bottom:2px;">Assigned To: '+result.data.agent_names+'</p>'+
						'<p class="text-muted" style="margin-bottom:2px;">Scheduled Date: '+result.data.scheduled_date+'</p></div></div>';
						
				$(".list-task").prepend(dat);
			}
			else
			{
				toastr.error(result.msg);
			}
		}
		});
	  }
	});	

var log_validate=$('#saveSpareParts').validate({ 
	
		rules: {
            product_id: {required: true,},
			quantity: {required: true,},
           },

	submitHandler: function(form) 
	{
		$.ajax({
		url: "{{route('save-spare-parts')}}",
		method: 'post',
		data: $('#saveSpareParts').serialize(),
		dataType:'json',
		
		success: function(result){
			if(result.status == 1)
			{
				toastr.success(result.msg);
				$("#product_id").val("");
				$("#quantity").val("");
			
			    var dat='<div class="activity-info mt-3"><div class="icon-info-activity"> <i class="las la-check-circle bg-soft-primary"></i></div>'+ 
					'<div class="activity-info-text"><div class="d-flex justify-content-between align-items-center mb-2">'+
					'<h6 class="m-0 w-75">'+result.data.user_name+' added a spare parts.</h6> </div>'+
					'<p class="text-muted d-block" style="font-size:12px;margin-bottom:2px;">'+result.data.created_date+
					'<p class="text-muted">Product:'+result.data.product+'&nbsp;|&nbsp;Brand:'+result.data.brand+
					'&nbsp;|&nbsp;category:'+result.data.category+'&nbsp;|&nbsp;No of Items:'+result.data.quantity+'&nbsp;|&nbsp;Cost:'+result.data.total_amount+'</p></div>'+
					'<div class="text-end btn-spare-action hide">'+
					'<a href="javascript:;" class="btn btn-outline-danger btn-icon-circle btn-icon-circle-sm btn-spare-delete" id="'+result.data.id+'" title="Delete" ><i class="fas fa-trash"></i></a>'+
					'</div></div>';

				$(".list-spare-parts").prepend(dat);
			}
			else
			{
				toastr.error(result.msg);
			}
		}
		});
	  }
	});	


$(document).on("click","#btn-close-ticket",function()
{

	var tkt_id=$(this).data('ticketid');

	if($(this).html()=="Close Ticket")
	{
		var tstatus=4;
	}
	else
	{
		var tstatus=2;
	}
	
	$.ajax({
		url: "{{route('change-ticket-status')}}",
		method: 'post',
		data: {'_token':"{{csrf_token()}}", 'ticket_status':tstatus,'ticket_id':tkt_id},
		dataType:'json',
		success: function(result){
			if(result.status == 1)
			{
				
				if(result.data.status==4)
				{
					toastr.success("Ticket Successfully closed!");	
					$("#btn-close-ticket").html("Reopen Ticket");
					$("#tkt_status").val(tstatus);
				}
				else
				{
					toastr.success("Ticket Successfully Reopend!");
					$("#btn-close-ticket").html("Close Ticket");
					$("#tkt_status").val(tstatus);
				}

			}
			else
			{
				toastr.error(result.msg);
			}
		}
		});
});	


//UPDATE ticket

var edit_validate=$('#editTicket').validate({ 
	
		rules: {
            edit_issue: {required: true,},
			edit_description: {required: true,},
           },

	submitHandler: function(form) 
	{
		

		$.ajax({
		url: "{{route('update-ticket')}}",
		method: 'post',
		data: $('#editTicket').serialize(),
		dataType:'json',
		
		success: function(result){
			if(result.status == 1)
			{
				toastr.success(result.msg);
				$("#edit_issue").val("");
				$("#edit_description").val("");
				$("#divEditTicket").removeClass('show');
				$("#divEditTicket").addClass('hide');
				$("#ticket-issue").html(result.data.issue);
				$("#ticket-desc").html(result.data.description);
			}
			else
			{
				toastr.error(result.msg);
			}
		}
		});
	  }
	});	


$(document).on('click','.ticket_delete',function()
{
	Swal.fire({
	  //title: "Are you sure?",
	  text: "Are you sure, You want to delete this ticket?",
	  //icon: "question",
	  showCancelButton: true,
	  confirmButtonColor: "#3085d6",
	  cancelButtonColor: "#d33",
	  confirmButtonText: "Yes, Delete it!"
	}).then((result) => {
	  if (result.isConfirmed) {
		
		var tid=$(this).attr('id');
		
		  $.ajax({
          url: "{{url('delete-ticket')}}"+'/'+tid,
          type: 'get',
		  dataType: 'json',
          //data:{'track_id':tid},
          success: function (res) 
		  {
			if(res.status==1)
			{
				 toastr.success(res.msg);
				 $("#modalTicketDetails").modal('hide');
				 $("#modalTicketDetails .modal-body").html("");
				 setTimeout(function(){window.location.reload();}, 500);
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


$(document).on("change",".additional_fields",function()
{

	var tkt_id=$("#update_ticket_id").val();
	var id=$(this).attr('id');
	var field_id=$(this).data('fieldid');
	var val=$(this).val();
		
	$.ajax({
		url: "{{route('update-custom-field')}}",
		method: 'post',
		data: {'_token':"{{csrf_token()}}",'id':id,'field_id':field_id,'ticket_id':tkt_id,'data_value':val},
		dataType:'json',
		success: function(result){

			if(result.status == 1)
			{
				toastr.success(result.msg);
			}
			else
			{
				toastr.error(result.msg);
			}
		}
		});
});	


$(document).on("change","#tkt_status",function()
{

	var tkt_id=$("#update_ticket_id").val();
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
				if(result.data.status==4)
				{
					$("#btn-close-ticket").html('Reopen Ticket');
				}
			}
			else
			{
				toastr.error(result.msg);
			}
		}
		});

});	


$(document).on("change","#tkt_priority",function()
{

	var tkt_id=$("#update_ticket_id").val();
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
				$(this).val(result.data.priority);
				var $select = $('#tkt_priority');
				$select.css('color', result.data.priority_color);
			}
			else
			{
				toastr.error(result.msg);
			}
		}
		});

});	


$(document).on("change","#tkt_branch",function()
{

	var tkt_id=$("#update_ticket_id").val();
	var brid=$(this).val();

	$.ajax({
		url: "{{route('change-branch')}}",
		method: 'post',
		data: {'_token':"{{csrf_token()}}", 'branch':brid,'ticket_id':tkt_id},
		dataType:'json',
		success: function(result){
			if(result.status == 1)
			{
				toastr.success(result.msg);
				$(this).val(result.data.branch);
			}
			else
			{
				toastr.error(result.msg);
			}
		}
		});

});	


$(document).on("change","#tkt_assigned_to",function()
{
	$("#btn_add_remove_agent").prop('disabled',false);
});

$(document).on("click","#btn_add_remove_agent",function()
{

	var tkt_id=$("#update_ticket_id").val();
	var agents=$("#tkt_assigned_to").val();
	var opt=1;

	$.ajax({
		url: "{{route('assign-ticket-agents')}}",
		method: 'post',
		data: {'_token':"{{csrf_token()}}", 'assign_agents':agents,'agent_ticket_id':tkt_id,'option':opt},
		dataType:'json',
		success: function(result){
			if(result.status == 1)
			{
				toastr.success(result.msg);
				$("#btn_add_remove_agent").prop('disabled',true);
			}
			else
			{
				toastr.error(result.msg);
			}
		}
		});

});	


$(document).on("change","#tkt_notify_to",function()
{
	$("#btn_add_remove_notify").prop('disabled',false);
});


$(document).on("click","#btn_add_remove_notify",function()
{

	var tkt_id=$("#update_ticket_id").val();
	var agents=$("#tkt_notify_to").val();
	var opt=1;

	$.ajax({
		url: "{{route('notify-ticket-agents')}}",
		method: 'post',
		data: {'_token':"{{csrf_token()}}", 'assign_agents':agents,'agent_ticket_id':tkt_id,'option':opt},
		dataType:'json',
		success: function(result){
			if(result.status == 1)
			{
				toastr.success(result.msg);
				$("#btn_add_remove_notify").prop('disabled',true);
			}
			else
			{
				toastr.error(result.msg);
			}
		}
		});
});	

$(document).on("change","#tkt_due_date",function()
{

	var tkt_id=$("#update_ticket_id").val();
	var duedt=$("#tkt_due_date").val();
	var duetm=$("#tkt_due_time").val();
		
	$.ajax({
		url: "{{route('update-ticket-duedate')}}",
		method: 'post',
		data: {'_token':"{{csrf_token()}}", 'due_date':duedt,'due_time':duetm,'ticket_id':tkt_id},
		dataType:'json',
		success: function(result){
			if(result.status == 1)
			{
				toastr.success(result.msg);
			}
			else
			{
				toastr.error(result.msg);
			}
		}
	});
});

$(document).on("change","#tkt_due_time",function()
{

	var tkt_id=$("#update_ticket_id").val();
	var duedt=$("#tkt_due_date").val();
	var duetm=$("#tkt_due_time").val();
		
	$.ajax({
		url: "{{route('update-ticket-duedate')}}",
		method: 'post',
		data: {'_token':"{{csrf_token()}}", 'due_date':duedt,'due_time':duetm,'ticket_id':tkt_id},
		dataType:'json',
		success: function(result){
			if(result.status == 1)
			{
				toastr.success(result.msg);
			}
			else
			{
				toastr.error(result.msg);
			}
		}
	});
});


$(document).on('click','.btn-file-delete',function()
{

	var obj=$(this);
	Swal.fire({
	  //title: "Are you sure?",
	  text: "Are you sure, You want to delete this file?",
	  //icon: "question",
	  showCancelButton: true,
	  confirmButtonColor: "#3085d6",
	  cancelButtonColor: "#d33",
	  confirmButtonText: "Yes, Delete it!"
	}).then((result) => {
	  if (result.isConfirmed) {
		
		var tid=$(this).attr('id');
		
		  $.ajax({
          url: "{{url('delete-ticket-file')}}"+'/'+tid,
          type: 'get',
		  dataType: 'json',
          //data:{'track_id':tid},
          success: function (res) 
		  {
			if(res.status==1)
			{
				 toastr.success(res.msg);
				 obj.closest('.div-attachement').remove();
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

$(document).on('click','.btn-spare-delete',function()
{

	var obj=$(this);
	Swal.fire({
	  //title: "Are you sure?",
	  text: "Are you sure, You want to delete this file?",
	  //icon: "question",
	  showCancelButton: true,
	  confirmButtonColor: "#3085d6",
	  cancelButtonColor: "#d33",
	  confirmButtonText: "Yes, Delete it!"
	}).then((result) => {
	  if (result.isConfirmed) {
		
		var tid=$(this).attr('id');
		
		  $.ajax({
          url: "{{url('delete-ticket-spare-part')}}"+'/'+tid,
          type: 'get',
		  dataType: 'json',
          //data:{'track_id':tid},
          success: function (res) 
		  {
			if(res.status==1)
			{
				 toastr.success(res.msg);
				 obj.closest('.div-spare').remove();
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


var inv_validate=$('#saveInvoice').validate({ 
	
		rules: {
            service_charge: {required: true,},
			payment_mode: {required: true,},
           },

	submitHandler: function(form) 
	{
		
		$.ajax({
		url: "{{route('save-invoice')}}",
		method: 'post',
		data: $('#saveInvoice').serialize(),
		dataType:'json',
		
		success: function(result){
			if(result.status == 1)
			{
				toastr.success(result.msg);
				$("#saveInvoice")[0].reset();
				$("#addInvoice").removeClass('show').addClass('hide');
			}
			else
			{
				toastr.error(result.msg);
			}
		}
		});
	  }
	});	



</script>
