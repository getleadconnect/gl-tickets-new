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
                                       <li class="breadcrumb-item"><a href="{{url('dashboard')}}">Home</a>
										</li><!--end nav-item-->
										<li class="breadcrumb-item active"><a href="#">Ticket Statuses</a>
										</li><!--end nav-item-->
                                    </ol>
                                </div>
                                <h4 class="page-title">Ticket Statuses </h4>

								
                            </div><!--end page-title-box-->
                        </div><!--end col-->
                    </div>
                    <!-- end page title end breadcrumb -->

    <div class="row">
      <div class=" col-md-12 col-lg-12 col-xl-12 col-xxl-12">

				<div class="card">
					<div class="card-body ">    

						<div class="row">
						<div class="col-12 col-lg-12 ">

						<label class="mb-2"><strong>Add Ticket Status & Color :</strong> </label>
						<div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-header">

								<form id="addLabelColor">
								@csrf
								
                                    <div class="row align-items-center">
                                        <div class="col-3">
											<div class="row">
												<label class="col-3 col-form-label">Ticket Status</label>
											<div class="col-8">	
												<input type="text" class="form-control" id="ticket_status" name="ticket_status" value="" required>
											</div>
										</div>
										</div><!--end col-->  
										
										<div class="col-3">
											 <div class="row">
												<label class="col-3 col-lg-3 col-form-label">Select Color</label>
												<div class="col-2">
													<input type="color" class="form-control form-control-color" name="status_color" id="status_color" style="width:150px;" value="#0b51b7" title="Choose your color" required>
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
						
						<label class="mb-2"><strong>Ticket Statses & Color :</strong> </label>
						
								<div class="row">
								<div class="col-12">   

									 <table id="datatable2" class="table align-middle" style="width:100% !important;">
                                        <thead class="thead-light" style="width:100% !important;">
                                          <tr >
											<th>#</th>
											<th>Id</th>
                                            <th>Ticket Status</th>
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

						</div>                                                
					</div>
				
					</div> <!--end card-body-->                            
				</div><!--end card-->
						

						
		</div><!--end col-->
	</div><!--end row-->
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

$('#datatable2 tbody').on('click','.edit-status',function()
{
	var lbl_id=$(this).attr('id');
	var label=$(this).closest('tr').find('td').eq(1).text();
	var color=$(this).closest('tr').find('span.ts-color').data('color');
	
	$("#edit_status_id").val(lbl_id);
	$("#edit_ticket_status").val(label);
	$("#edit_status_color").val(color);

});

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

