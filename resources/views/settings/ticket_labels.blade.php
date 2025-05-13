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
                                <h4 class="page-title">Ticket Labels </h4>

								
                            </div><!--end page-title-box-->
                        </div><!--end col-->
                    </div>
                    <!-- end page title end breadcrumb -->

    <div class="row">
      <div class=" col-md-12 col-lg-12 col-xl-12 col-xxl-12">

				<div class="card">
					<div class="card-body">    

						<label class="mb-2"><strong>Add Label & Color :</strong> </label>
						<div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-header">

								<form id="addLabelColor">
								@csrf
								
                                    <div class="row align-items-center">
                                        <div class="col-3">
											<div class="row">
												<label class="col-3 col-form-label">Ticket Label</label>
											<div class="col-8">	
												<input type="text" class="form-control" id="ticket_label" name="ticket_label" value="" required>
											</div>
										</div>
										</div><!--end col-->  
										
										<div class="col-3">
											 <div class="row">
												<label class="col-3 col-lg-3 col-form-label">Select Color</label>
												<div class="col-2">
													<input type="color" class="form-control form-control-color" name="label_color" id="label_color" style="width:150px;" value="#0b51b7" title="Choose your color" required>
												</div>
											</div>
										</div>
	
										<div class="col-2">                      
                                         <button type="submit" class="btn btn-danger btn-plr btn-add-label" >Add <i class="fa fa-plus"></i></button>
                                        </div><!--end col-->  
                                    </div>  <!--end row-->    
								</form>
                                </div><!--end card-header-->

                            </div><!--end card-->
                        </div><!--end col-->
						</div><!--end row-->
												
						
								<div class="row mt-3">
									<div class="col-lg-12">
									
									<label class="mb-2"><strong>List Labels & Color :</strong> </label>

										<table id="datatable1" class="table align-middle" style="width:100% !important;">
                                        <thead class="thead-light">
										
                                          <tr>
											<th>#</th>
											<th>Id</th>
                                            <th>Ticket Label</th>
                                            <th>Color</th>
                                            <th>Created By</th>
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
	<!---  DETAILS MODAL ------------------------------------------------------------>			

		<div class="modal fade" id="editLabelColorModal" tabindex="-1" aria-labelledby="exampleModalDefaultLabel" aria-hidden="true" style="display: none;">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h6 class="modal-title m-0" id="exampleModalDefaultLabel">Edit Label</h6>
						<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					</div><!--end modal-header-->
					<div class="modal-body">
						
						<form method="post" action="{{route('update-label')}}" enctype="multipart/form-data">
						@csrf
						  <input type="hidden" name="edit_label_id" id="edit_label_id"> <!-- for update ---->
						
							<div class="form-group mb-3 row">
								<label class="form-label">Ticket_label</label>
								<input type="text" class="form-control" id="edit_ticket_label" name="edit_ticket_label" >
							</div>
							
							<div class="form-group mb-3 row">
								<label class="form-label">Select Color</label>
								<input type="color" class="form-control" id="edit_label_color" name="edit_label_color" >
							</div>
							
							<div class="row">
							  <div class="col-12 text-end">
								<button type="submit" class="btn btn-primary btn-plr " > Update </button>
								<button type="button" class="btn btn-danger btn-plr "  data-bs-dismiss="modal" aria-label="Close"> Close </button>
							  </div>
						 </div>
						</form>
						
					</div><!--end modal-body-->
					
				</div><!--end modal-content-->
			</div><!--end modal-dialog-->
		</div>


<div class="modal fade" id="editTicketStatusModal" tabindex="-1" aria-labelledby="exampleModalDefaultLabel" aria-hidden="true" style="display: none;">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h6 class="modal-title m-0" id="exampleModalDefaultLabel">Edit Ticket Status</h6>
						<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					</div><!--end modal-header-->
					<div class="modal-body">
						
						<form method="post" action="{{route('update-ticket-status')}}" enctype="multipart/form-data">
						@csrf
						  <input type="hidden" name="edit_status_id" id="edit_status_id"> <!-- for update ---->
						
							<div class="form-group mb-3 row">
								<label class="form-label">Ticket Status</label>
								<input type="text" class="form-control" id="edit_ticket_status" name="edit_ticket_status" >
							</div>
							
							<div class="form-group mb-3 row">
								<label class="form-label">Select Color</label>
								<input type="color" class="form-control" id="edit_status_color" name="edit_status_color" >
							</div>
							
							<div class="row">
							  <div class="col-12 text-end">
								<button type="submit" class="btn btn-primary btn-plr " > Update </button>
								<button type="button" class="btn btn-danger btn-plr "  data-bs-dismiss="modal" aria-label="Close"> Close </button>
							  </div>
						 </div>
						</form>
						
					</div><!--end modal-body-->
					
				</div><!--end modal-content-->
			</div><!--end modal-dialog-->
		</div>


@push('scripts')

<script>

$('#datatable1 tbody').on('click','.edit',function()
{
	var lbl_id=$(this).attr('id');
	var label=$(this).closest('tr').find('td').eq(1).text();
	var color=$(this).closest('tr').find('span.span-color').data('color');
	
	$("#edit_label_id").val(lbl_id);
	$("#edit_ticket_label").val(label);
	$("#edit_label_color").val(color);

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
			url:"{{url('view-labels')}}",
			data: function (data) 
		    {
               //data.search = $('input[type="search"]').val();
		    },
        },

        columns: [
            {"data": 'DT_RowIndex', name: 'DT_RowIndex', orderable: false, searchable: false  },
			{"data": "id", name:'id', visible: false, },
			{"data": "label", name:'label', orderable: true, searchable: true },
			{"data": "colorbox",name:'colorbox',orderable: false, searchable: false },
			{"data": "createdBy", name:'createdBy' ,orderable: true, searchable: true  },
			{"data": "action" ,name: 'Action',orderable: false, searchable: false },
        ],
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


var validate1=$('#addLabelColor').validate({ 
	
		rules: {
            ticket_label: {required: true,},
			label_color: {required: true,},
           },

	submitHandler: function(form) 
	{
		$.ajax({
		url: "{{route('save-label-color')}}",
		method: 'post',
		data: $('#addLabelColor').serialize(),
		dataType:'json',
		
		success: function(result){
			if(result.status == 1)
			{
				toastr.success(result.msg);
				$("#addLabelColor")[0].reset();
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
			url: "{{url('delete-label')}}"+"/"+id,
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

// TICKET LABELS ------------------------------------------------------------>



$('#datatable2 tbody').on('click','.edit-status',function()
{
	var lbl_id=$(this).attr('id');
	var label=$(this).closest('tr').find('td').eq(1).text();
	var color=$(this).closest('tr').find('span.ts-color').data('color');
	
	$("#edit_status_id").val(lbl_id);
	$("#edit_ticket_status").val(label);
	$("#edit_status_color").val(color);

});

$("#tab_ticketStatus").click(function()
{

var table = $('#datatable2').DataTable({
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
			url:"{{url('view-ticket-status')}}",
			data: function (data) 
		    {
               //data.search = $('input[type="search"]').val();
		    },
        },

        columns: [
            {"data": 'DT_RowIndex', name: 'DT_RowIndex', orderable: false, searchable: false  },
			{"data": "id", name:'id', visible: false, },
			{"data": "status", name:'label', orderable: true, searchable: true },
			{"data": "colorbox",name:'colorbox',orderable: false, searchable: false },
			{"data": "createdBy", name:'createdBy' ,orderable: true, searchable: true  },
			{"data": "action" ,name: 'Action',orderable: false, searchable: false },
        ],
		bDestroy:true,
});

});

var validate2=$('#addTicketStatus').validate({ 
	
		rules: {
            ticket_status: {required: true,},
			status_color: {required: true,},
           },

	submitHandler: function(form) 
	{
		$.ajax({
		url: "{{route('save-ticket-status')}}",
		method: 'post',
		data: $('#addTicketStatus').serialize(),
		dataType:'json',
		
		success: function(result){
			if(result.status == 1)
			{
				toastr.success(result.msg);
				$("#addLabelColor")[0].reset();
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
@endpush
@endsection

