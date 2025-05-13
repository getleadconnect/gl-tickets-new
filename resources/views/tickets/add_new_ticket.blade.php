<style>
.read-only{	background-color:#f1f1f1;}
</style>
<form id="createTicket"  method="POST" action="{{url('save-new-ticket')}}" enctype="multipart/form-data">
	@csrf
		<input type="hidden" class="form-control"  name="url_segment" value="{{$url_seg}}">

		@if($cust_id!=0)
		
		<div class="mb-3">
			<label for="issue">Customer Id</label>
			<input type="text" class="form-control read-only"  name="customer_id" value="{{$cust_id}}" readonly>
		</div>
		
		@endif
	
	
		<div class="mb-3">
			<label for="issue">Issue</label>
			<input type="text" class="form-control" id="issue" name="issue" placeholder="Enter Issue">
		</div>
		<div class="mb-3">
			<label for="description">Description</label>
			<textarea rows=2 class="form-control" id="description" name="description" placeholder="Description"></textarea>
		</div>
				
		@if($cust_id==0)
			<div class="row">
			<div class="col-10">
			<div class="mb-3">
				<label for="customer">Customer</label>
				<select class="form-select"  name="customer_id">
				<option value="" selected disabled>Select</option>
					 @foreach($customer as $r)
					   <option value="{{$r->id}}"  >{{$r->name}}</option>
					 @endforeach
				</select>
			</div>
			</div>
			<div class="col-1">
			<button type="button" id="addCustomer" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#createCustomerModal" style="margin-top:20px;padding:4px 10px;"><i class="fa fa-plus"></i></button>
			</div>
			</div>
		@endif
							
		<div class="mb-3">
			<label for="branch">Branch</label>
			<select class="form-select" id="branch_id" name="branch_id">
			<option value="">select</option>
			@foreach($branch as $row)
				<option value="{{$row->id}}">{{$row->branch}}</option>
			@endforeach
			</select>
		</div>
		
		<div class="row">
		<div class="col-6">
			<div class="mb-3">
				<label for="ticket_status">Ticket Status</label>
				<select class="form-select" id="ticket_status" name="ticket_status">
				<option value="" selected disabled>Select</option>
				 @foreach($tk_status as $r)
				   <option value="{{$r->id}}" >{{$r->status}}</option>
				 @endforeach
				</select>
			</div>
		</div>
		<div class="col-6">
			<div class="mb-3">
				<label for="priority">Priority</label>
				<select class="form-select" id="priority" name="priority">
				<option value="" selected disabled>Select</option>
				 @foreach($priority as $r)
				   <option value="{{$r->id}}" >{{$r->title}}</option>
				 @endforeach
				</select>
			</div>
		</div>
		</div>
		
		<div class="row">
		<div class="col-6">
			<div class="mb-3">
				<label for="assigned_to">Assigned To</label>
					<select id="assignedTo"  name="assigned_to[]" >
						 @foreach($users as $r)
						   <option value="{{$r->id}}" >{{$r->name}}</option>
						 @endforeach
					</select>         
			</div>
		</div>
		<div class="col-6">
			<div class="mb-3">
				<label for="notify_to">Notify To</label>
				<select id="notifyTo"  name="notify_to[]" >
					@foreach($users as $r)
					   <option value="{{$r->id}}" >{{$r->name}}</option>
					@endforeach
				</select>        
			</div>
		</div>
		</div>
		
		<div class="row">
		<div class="col-6">
			<div class="mb-3">
				<label for="due_on">Due Date</label>
				<input type="date" class="form-control" id="due_date"  name="due_date" placeholder="Due Date">
			</div>
			</div>
			<div class="col-6">
			<div class="mb-3">
				<label for="due_time">Time</label>
				<input type="time" class="form-control" id="closed_time" name="closed_time"  placeholder="Time">
			</div>
		</div>
		</div>
		
		<div class="mb-3">
			<label for="ticket_label">Label</label>
			<select class="form-select" id="ticket_label" name="ticket_label">
			<option value="" selected disabled>Select</option>
				 @foreach($tlabel as $r)
				   <option value="{{$r->id}}" >{{$r->label}}</option>
				 @endforeach
			</select>
		</div>
								
		<div class="mb-3">
			<label for="attach_file">Attach File</label>
			<input type="file" class="form-control" id="attach_file" name="attach_file[]"  multiple placeholder="Select file">
		</div>
		
			@if($additional_field!=null)
				   
			   <p class="mb-2" style="font-size:15px;"><b><u>Additional Fields:</u></b></p>
				   
				   @foreach($additional_field as $key=>$row)

					@if($row['field_type']=="select")
					<div class="mb-3">
						<label for="ticket_label">{{$row['field_title']}}</label>
						<select class="form-select"  name="{{$row['field_name']}}"  @if($row['mandatory']==1) required @endif >
						<option value="" selected >Select</option>
						@if(is_array($row['field_values']))
							@foreach($row['field_values'] as $key=>$r)
								<option value="{{$r['id']}}" >{{$r['value']}}</option>
							@endforeach
						@endif
						</select>
					</div>
					
					@else
						
					<div class="mb-3">
					<label >{{$row['field_title']}}</label>
					<input type="{{$row['field_type']}}" class="form-control additional_fields" name="{{$row['field_name']}}" data-fieldid="{{$row['field_id']}}" 
								 name="{{$row['field_id']}}"  value="{{$row['field_values']}}" @if($row['mandatory']==1) required @endif>
					</div>
									
					@endif
			   
				   @endforeach
			   @endif

		<div class="row">
			<div class="col-12 text-right" style="text-align:right;">
				
				<button type="button" class="btn btn-danger btn-pad close_btn" data-bs-dismiss="offcanvas" >Cancel</button>
				<button type="submit" class="btn btn-primary btn-pad">Save Ticket</button>
			</div>
		</div>
</form>

<script>

new Selectr("#assignedTo",{multiple:!0});
new Selectr("#notifyTo",{multiple:!0});
		
</script>