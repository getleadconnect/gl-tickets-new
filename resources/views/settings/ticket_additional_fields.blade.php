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
.input-group-text {
    padding: 2px !important;
}
.btn-icon-circle-size {
    width: 20px !important;
    height: 20px !important;
    line-height: 1;
    padding: 0;
}
.chk-box
{
	width:20px;height:20px;vertical-align: middle;
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
                                <h4 class="page-title">Ticket Additional Fields </h4>

								
                            </div><!--end page-title-box-->
                        </div><!--end col-->
                    </div>
                    <!-- end page title end breadcrumb -->

    <div class="row">
      <div class=" col-md-12 col-lg-12 col-xl-12 col-xxl-12">

				<div class="card">
					<div class="card-body">    

					<div class="row">
                        <div class="col-lg-12 text-end">
						<button type="submit" class="btn btn-danger btn-plr " data-bs-toggle="offcanvas" data-bs-target="#Appearance" role="button" aria-controls="Rightbar">Add <i class="fa fa-plus"></i></button>
						</div>
					</div>

								<div class="row mt-3">
									<div class="col-lg-12">
										<table id="datatable1" class="table align-middle" style="width:100% !important;">
                                        <thead class="thead-light">
										
                                          <tr>
											<th>#</th>
											<th>Field Title</th>
                                            <th>Field Name</th>
                                            <th>Field Type</th>
                                            <th>Required</th>
                                            <th>Show in Filter</th>
											<th>Show in List</th>
											<th>Select Values</th>
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

 <div class="offcanvas offcanvas-end" tabindex="-1" id="Appearance" aria-labelledby="AppearanceLabel" aria-modal="true" role="dialog" style="width:330px !important;">
                <div class="offcanvas-header border-bottom">
                  <h5 class="m-0 font-14" id="AppearanceLabel" style="color:#fff;">Add Additional Fields</h5>
                  <button type="button" class="btn-close text-reset p-0 m-0 align-self-center btn-canvas-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>
                <div class="offcanvas-body">  
				
				
				<form id="addAdditionalFields">
								@csrf
								
                                    <div class="row mb-2">
                                        <div class="col-12">
												<label >Field Title</label>
												<input type="text" class="form-control" id="field_title" name="field_title" value="" required>
										</div></div>
									<div class="row mb-2">	
                                        <div class="col-12">
												<label>Field Name</label>
												<input type="text" class="form-control" id="field_name" name="field_name" value="" required>
										</div></div>
									<div class="row mb-2">	
										<div class="col-12">
											<label >Field Type</label>
											<select class="form-control" name="field_type" id="field_type" required>
											<option value="" selected disabled>--select--</option>
											<option value="select" >SELECT</option>
											<option value="text" >TEXT</option>
											<option value="date" >DATE</option>
											</select>
										</div></div>
									<div class="row mb-2 mt-3">	
										
										<div class="col-12">
											<input type="checkbox" class="chk-box mb-2" id="show_in_filter" name="show_in_filter"  >&nbsp;Show In Filter<br>
											<input type="checkbox" class="chk-box mb-2" id="show_in_list" name="show_in_list"  >&nbsp;Show In List<br>
											<input type="checkbox" class="chk-box mb-2" id="data_required" name="data_required" >&nbsp;Required<br>
											<input type="checkbox" class="chk-box" id="data_multiselect" name="data_multiselect"  disabled>&nbsp;Multiselect&nbsp;&nbsp;&nbsp;
										</div>
									</div>
									<div class="row mb-2">	
										<div class="col-12" id="select-data">
										
											<!---- input controls here ----------->
												
										</div>
										</div>
										
										</div>
										
									<div class="row  mt-2">	
										<div class="col-12 text-end px-3">                      
                                         <button type="submit" class="btn btn-primary btn-plr " > Submit </button>
										 <button type="button" class="btn btn-danger btn-plr btn-canvas-close" data-bs-dismiss="offcanvas" aria-label="Close" > Close </button>
                                        </div><!--end col-->  
                                    </div>  <!--end row-->    

								</form>
	
                </div><!--end offcanvas-body-->
            </div>


		<div class="modal fade" id="editAdditionalFieldModal" tabindex="-1"  aria-hidden="true" style="display: none;">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h6 class="modal-title m-0" >Edit Additional Field</h6>
						<button type="button" class="btn-close btn-modal-close" data-bs-dismiss="modal" aria-label="Close"></button>
					</div><!--end modal-header-->
					<div class="modal-body">
						
					
					</div><!--end modal-body-->
					
				</div><!--end modal-content-->
			</div><!--end modal-dialog-->
		</div>


@push('scripts')

<script>



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
			url:"{{url('view-additional-fields')}}",
			data: function (data) 
		    {
               //data.search = $('input[type="search"]').val();
		    },
        },

        columns: [
            {"data": 'DT_RowIndex', name: 'DT_RowIndex', orderable: false, searchable: false  },
			{"data": "field_title", name:'field_title', orderable: true, searchable: true },
			{"data": "name",name:'name',orderable: true, searchable: true },
			{"data": "type",name:'type',orderable: true, searchable: true },
			{"data": "mandat",name:'mandat',orderable: true, searchable: true },
			{"data": "sfilter",name:'sfilter',orderable: true, searchable: true},
			{"data": "slist", name:'slist' ,orderable: true, searchable: true  },
			{"data": "afields", name:'value' ,orderable: true, searchable: true  },
			{"data": "action" ,name: 'Action',orderable: false, searchable: false },
        ],
});


$('#datatable1 tbody').on('click','.edit',function()
{

	var id=$(this).attr('id');
	var Result=$("#editAdditionalFieldModal .modal-body");

			jQuery.ajax({
			type: "GET",
			url: "{{url('edit-additional-field')}}"+"/"+id,
			dataType: 'html',
			//data: {vid: vid},
			success: function(res)
			{
			   Result.html(res);
			}
		});

});


$(document).on('change','#field_type',function()
{
	if($(this).val()=="select"){
		$(".select-val-input").prop('required',true);
		
		var dat='<div class="val-div hide" style="width:100%;"><label class="mt-2">Enter Values for SELECT</label>'+
				'<div class="input-group mb-3 parent-div" >'+
				'<input type="text" class="select-val-input form-control" placeholder="value" name="values[]" aria-describedby="basic-addon2" required>'+
				'<span class="input-group-text" id="basic-addon2">'+
				'<button type="button" class="btn-val-add btn btn-outline-dark btn-icon-circle btn-icon-circle-size">✚</button></span>'+
				'</div></div>';
				
		$("#select-data").append(dat);							

		$('div.val-div').removeClass('hide');
		$('div.val-div').addClass('show');
		$("#data_multiselect").prop('disabled',false);
		
	}
	else
	{
		$("#select-data").html('')
		$("#data_multiselect").prop('disabled',true);
		$('div.val-div').removeClass('show');
		$('div.val-div').addClass('hide');
		$(".select-val-input").prop('required',false);
	}
});

$(document).on('click',".btn-val-add",function()
{
	if($(this).html()=="⚊")
	{
		$(this).parent().parent('div.parent-div').remove();
	}
	else
	{
		$(this).html('⚊');
		var dat='<div class="input-group mb-3 parent-div">'+
				'<input type="text" class="select-val-input form-control" placeholder="value" name="values[]" aria-describedby="basic-addon2" required>'+
				'<span class="input-group-text" id="basic-addon2">'+
				'<button type="button" class="btn-val-add btn btn-outline-dark btn-icon-circle btn-icon-circle-size">✚</button></span>'+
				'</div>';

		$("#select-data").append(dat);
	}
});

$('#datatable1 tbody').on('click','.edit',function()
{
	var lbl_id=$(this).attr('id');
	var label=$(this).closest('tr').find('td').eq(1).text();
	var color=$(this).closest('tr').find('span.span-color').data('color');
	
	$("#edit_label_id").val(lbl_id);
	$("#edit_ticket_label").val(label);
	$("#edit_label_color").val(color);

});


$(".btn-canvas-close").click(function()
{
	$("#addAdditionalFields")[0].reset();
	$("#select-data").html('');
	
});


/*$('#datatable1 tbody').on('click','.edit',function()
{
    var lbl_id=$(this).closest('tr').find('td').eq(1).text();
	var label=$(this).closest('tr').find('td').eq(1).text();
	var color=$(this).closest('tr').find('span.span-color').data('color');
		
	$("#ticket_label").val(label);
	$("#label_color").val(color);
	$(".btn-add-label").html('Update');
});*/


var validate1=$('#addAdditionalFields').validate({ 
	
		rules: {
            field_title: {required: true,},
			field_name: {required: true,},
			field_type: {required: true,},
           },

	submitHandler: function(form) 
	{
		$.ajax({
		url: "{{route('save-additional-field')}}",
		method: 'post',
		data: $('#addAdditionalFields').serialize(),
		dataType:'json',
		
		success: function(result){
			if(result.status == 1)
			{
				toastr.success(result.msg);
				$("#addAdditionalFields")[0].reset();
				$("#select-data").html('');
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


$("#datatable1 tbody").on('click','.delete',function()
{
	
	
	Swal.fire({
	  //title: "Delete",
	  text: "Are you sure, You want to delete this data?",
	  //icon: "question",
	  showCancelButton: true,
	  confirmButtonColor: "#3085d6",
	  cancelButtonColor: "#d33",
	  confirmButtonText: "Yes, delete it!"
	}).then((result) => {
	  if (result.isConfirmed) {

		var id=$(this).attr('id');

		  jQuery.ajax({
			type: "get",
			url: "{{url('delete-additional-field')}}"+"/"+id,
			dataType: 'json',
			//data: {vid: vid},
			success: function(res)
			{
			   if(res.status==true)
			   {
				   toastr.success(res.msg);
				   $('#datatable1').DataTable().ajax.reload(null, false);
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

