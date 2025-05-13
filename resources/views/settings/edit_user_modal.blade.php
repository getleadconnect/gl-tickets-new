<form  method="post" action="{{url('update-user')}}" enctype="multipart/form-data">
		@csrf
		<input type="hidden" name="user_id" value="{{$udt->id}}">
		
			<div class="form-group mb-3 row">
				<label class="form-label">Name</label>
				<input type="text" class="form-control" id="edit_name" name="edit_name" value="{{$udt->name}}">
			</div>
			
			<div class="form-group mb-3 row">
				<label class="form-label">Email</label>
				<input type="email" class="form-control" id="edit_email" name="edit_email" value="{{$udt->email}}" >
			</div>
			
			<div class="form-group mb-3 row">
				<label class="form-label">Mobile</label>
				<input type="number" class="form-control" id="edit_mobile" name="edit_mobile" value="{{$udt->mobile}}" >
			</div>
			
			<div class="form-group mb-3 row">
				<label class="form-label">Designation</label>
				<select class="form-select" id="edit_desig" name="edit_desig" >
				   <option value="" selected disabled>select</option>
				   @foreach($desig as $r)
					 <option value="{{$r->id}}" @if($r->id==$udt->designation_id) selected @endif>{{$r->designation}}</option>
				   @endforeach
				</select>
			</div>
			
			<div class="form-group mb-3 row">
				<label class="form-label">Role </label>
				<select class="form-select" id="edit_role" name="edit_role" >
				   <option value="" selected disabled>select</option>
				   @foreach($role as $r)
					  <option value="{{$r->id}}" @if($r->id==$udt->role_id) selected @endif >{{$r->name}}</option>
				   @endforeach
				</select>
			</div>

			<div class="modal-footer mb-3 row">
				<div class="col-lg-12 col-xl-12 text-end">
					<button type="submit" class="btn btn-primary btn-plr">Update User</button>
					<button type="button" class="btn btn-danger btn-plr" data-bs-dismiss="modal" >Close</button>
				</div>
			</div>   
	</form>

