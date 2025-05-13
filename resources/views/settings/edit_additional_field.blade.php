<form method="post" action="{{route('update-additional-field')}}" enctype="multipart/form-data">
	@csrf
	
		<input type="hidden" name="edit_afield_id" value="{{ $af->id}}">
		<div class="row mb-2">
			<div class="col-12">
					<label >Field Title</label>
					<input type="text" class="form-control" id="edit_field_title" name="edit_field_title" value="{{$af->title}}" required>
			</div></div>
		<div class="row mb-2">	
			<div class="col-12">
					<label>Field Name</label>
					<input type="text" class="form-control" id="edit_field_name" name="edit_field_name" value="{{$af->name}}" required>
			</div></div>
		<div class="row mb-2">	
			<div class="col-12">
				<label >Field Type</label>
				<select class="form-control" name="edit_field_type" id="edit_field_type" required>
				<option value="" selected disabled>--select--</option>
				<option value="select" @if($af->type=="select") selected @endif>SELECT</option>
				<option value="text" @if($af->type=="text") selected @endif>TEXT</option>
				<option value="date" @if($af->type=="date") selected @endif>DATE</option>
				</select>
			</div></div>
		<div class="row mb-2 mt-3">	
			
			<div class="col-12">
				<input type="checkbox" class="chk-box mb-2" id="edit_show_filter" name="edit_show_filter"  @if($af->show_filter==1) checked @endif >&nbsp;Show In Filter<br>
				<input type="checkbox" class="chk-box mb-2" id="edit_show_list" name="edit_show_list"  @if($af->show_list==1) checked @endif>&nbsp;Show In List<br>
				<input type="checkbox" class="chk-box mb-2" id="edit_data_required" name="edit_data_required" @if($af->mandatory==1) checked @endif>&nbsp;Required<br>
				<input type="checkbox" class="chk-box" id="edit_data_multiselect" name="edit_data_multiselect"
				
				@if($af->selection=="multiple") checked enabled @else disabled @endif	>&nbsp;Multiselect&nbsp;&nbsp;&nbsp;
			</div>
		</div>
		<div class="row mb-2">	
			<div class="col-12" id="edit-select-data">
		
			@if($af->type="select" and $af->value!="")
				@php
					$fields=$af->value;
					$last_key=(count($fields)-1);
				@endphp
				
				@foreach($fields as $key=>$val)
				
				<div class="val-div" style="width:100%;">
					@if($key==0)
					<label class="mt-2">Values for SELECT</label>
					<button type="button" class="btn-edit-val-add btn btn-outline-dark btn-icon-circle btn-icon-circle-sm" title="add" style="float:right;">✚</button></span>
					
					@endif
					<div class="input-group mt-3 mb-3 parent-div" >
					<input type="text" class="select-val-input form-control" placeholder="value" name="edit_values[]" value="{{$val['value']}}" aria-describedby="basic-addon2" required>
					<span class="input-group-text" id="basic-addon2">
					<button type="button" class="btn-edit-val-del btn btn-outline-dark btn-icon-circle btn-icon-circle-size" @if($key==0) id="1" @endif >⚊</button></span>
				</div></div>
			@endforeach
			@endif
			
				<!---- input controls here ----------->
			</div>
			</div>
			
			</div>
			
		<div class="modal-footer">	
			 <button type="submit" class="btn btn-primary btn-plr " > Submit </button>
			 <button type="button" class="btn btn-danger btn-plr btn-modal-close" data-bs-dismiss="modal" aria-label="Close" > Close </button>
		</div>  <!--end row-->    

	</form>
	
	
	<script>
	
$(document).on('click',".btn-edit-val-add",function()
{
	
		var dat='<div class="input-group mb-3 parent-div">'+
				'<input type="text" class="select-val-input form-control" placeholder="value" name="edit_values[]" aria-describedby="basic-addon2" required>'+
				'<span class="input-group-text" id="basic-addon2">'+
				'<button type="button" class="btn-edit-val-del btn btn-outline-dark btn-icon-circle btn-icon-circle-size">⚊</button></span>'+
				'</div>';

		$("#edit-select-data").append(dat);

});
	
	
$(document).on('click',".btn-edit-val-del",function()
{

var cnt=$("#edit-select-data").find(".parent-div").length;
if(cnt==1)
	alert("SELECT required one value!");
else
{
	$(this).parent().parent('div.parent-div').remove();
}

});











</script>
	