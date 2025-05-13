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
.dataTables_scrollBody
{
	min-height:150px;
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
                                <h4 class="page-title">Users And Departments </h4>

								
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
											<!---- data here ---------->
										</div><!--end col-->  
										<div class="col-2 text-end">                      
                                           
										   <!---- data here ---------->

                                        </div><!--end col-->  
                                    </div>  <!--end row-->                                  
                                </div><!--end card-header-->

                            </div><!--end card-->
                        </div><!--end col-->
                    </div><!--end row-->

    <div class="row">
      <div class=" col-md-12 col-lg-12 col-xl-12 col-xxl-12">

				<div class="card">
					<div class="card-body p-0">    
						<!-- Nav tabs -->
					<div class="row">
						<div class="col-9 col-lg-9">
						<ul class="nav nav-tabs" role="tablist" style="border-bottom:none;">
							<li class="nav-item">
								<a class="nav-link active font-16 px-3" data-bs-toggle="tab" href="#tab_users" role="tab" aria-selected="true"><strong>Users and Roles</strong></a>
							</li>
							
							<li class="nav-item">
								<a class="nav-link font-16 px-3" id="tab_branch" data-bs-toggle="tab" href="#tab_branches" role="tab" aria-selected="false"><strong>Branches</strong></a>
							</li>
							
							<li class="nav-item">
								<a class="nav-link font-16 px-3" id="tab_depart" data-bs-toggle="tab" href="#tab_departments" role="tab" aria-selected="false"><strong>Department</strong></a>
							</li>
                                 
							<li class="nav-item">
								<a class="nav-link font-16 px-3" id="tab_desig" data-bs-toggle="tab" href="#tab_designations" role="tab" aria-selected="false"><strong>Designations</strong></a>
							</li>
							
							
						</ul>
						</div>
						<div class="col-3 col-lg-3" style="padding:5px 15px;">
						
						<!--<div style="float:right" >
							<button type="button" class="btn btn-danger dropdown-toggle btn-pad" data-bs-toggle="dropdown" aria-expanded="true">Add <i class="fa fa-plus"></i></button>
							<div class="dropdown-menu" data-popper-placement="bottom-start" style="position: absolute; inset: 0px auto auto 0px; margin: 0px; transform: translate(534px, 112px);">
									<a class="dropdown-item" href="#">Action</a>
								<a class="dropdown-item" href="#">Another action</a>
								<a class="dropdown-item" href="#">Something else here</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#">Separated link</a>
							</div>
						</div> -->
						</div>
					</div>

					<hr style="margin:0px;">
						<!-- Tab panes -->
					<div class="tab-content">
					
						<div class="tab-pane p-3 active" id="tab_users" role="tabpanel">
						
								<div class="row">                    
									<div class="col-12 col-md-12 col-lg-12 text-end">
									<button type="button" class="btn btn-danger btn-add-user btn-plr " >Add <i class="fa fa-plus"></i></button>
									</div><!--end col-->
								</div><!--end row-->
						
						
								<div class="row mt-3">
									<div class="col-lg-12">

										<table id="datatable1" class="table align-middle" style="width:100% !important;">
                                        <thead class="thead-light">
										
                                          <tr>
											<th>#</th>
                                            <th>Name</th>
                                            <th>Mobile</th>
                                            <th>Email</th>
                                            <th>Role</th>
                                            <th>Designation</th>
											<th>Status</th>
											<th>Action</th>
                                          </tr>
                                        </thead>
                                        <tbody>
                                                                                             
                                        </tbody>
                                      </table>
							
									
									</div><!--end col-->

								</div><!--end row-->  
								
								<!--- ADD USERS --------------------------------------->
								
								<div id="addUser" class="hide"  style="position:absolute;z-index:9999999;right:10px;top:20px;">
									<div class="card">
											<div class="card-header" style="background:#433653;">
												<div class="row align-items-center">
													<div class="col">                      
														<h4 class="card-title" style="color:#fff;">Create New User</h4>                      
													</div><!--end col-->                                                       
												</div>  <!--end row-->                                  
											</div><!--end card-header-->
											<div class="card-body">  
											<form id="saveUser">
											@csrf
											<input type="hidden" name="log_ticket_id" value="">
											
												<div class="form-group mb-3 row">
													<label class="form-label">Name</label>
													<input type="text" class="form-control" id="user_name" name="user_name" >
												</div>
												
												<div class="form-group mb-3 row">
													<label class="form-label">Email</label>
													<input type="email" class="form-control" id="user_email" name="user_email" >
												</div>
												
												<div class="form-group mb-3 row">
													<label class="form-label">Mobile</label>
													<input type="text" class="form-control" id="user_mobile" name="user_mobile" >
												</div>
												
												<div class="form-group mb-3 row">
													<label class="form-label">Designation</label>
													<select class="form-select" id="user_desig" name="user_desig" >
													   <option value="" selected disabled>select</option>
													    <option value="1" >Manager</option>
													</select>
												</div>
												
												<div class="form-group mb-3 row">
													<label class="form-label">Role </label>
													<select class="form-select" id="user_role" name="user_role" >
													   <option value="" selected disabled>select</option>
													    <option value="1">Super Admin</option>
													</select>
												</div>
												
												<div class="form-group mb-3 row">
													<label class="form-label">Password </label>
													<input type="password" class="form-control" id="user_password" name="user_password" >
												</div>
												
												<div class="form-group mb-3 row">
													<label class="form-label">Confirm Password </label>
													<input type="password" class="form-control" id="user_conf_password" name="user_conf_password" >
												</div>
																					
												
												<div class="form-group mb-3 row">
													<div class="col-lg-12 col-xl-12 text-end">
														<button type="submit" class="btn btn-primary btn-plr">Save User</button>
														<button type="button" class="btn btn-danger btn-plr btn-close-user" >Close</button>
													</div>
												</div>   
											</form>
											</div>                                            
										</div>
								</div>
	
							</div>
							
							
							<div class="tab-pane p-3 " id="tab_branches" role="tabpanel">
						
							<div class="row">
								<div class="col-12 col-lg-6 col-xl-6 col-xxl-6">

								<div class="row">                    
									<div class="col-12 col-md-12 col-lg-12 text-end">
									    
										<button type="button" class="btn btn-danger btn-add-branch btn-plr" >Add <i class="fa fa-plus"></i></button>
										
										
									<div id="addBranch" class="hide"  style="position:absolute;z-index:9999999;right:5px;top:0px;">
									<div class="card">
											<div class="card-header" style="background:#433653;">
												<div class="row align-items-center">
													<div class="col">                      
														<h4 class="card-title" style="color:#fff;">Create New Branch</h4>                      
													</div><!--end col-->                                                       
												</div>  <!--end row-->                                  
											</div><!--end card-header-->
											<div class="card-body">  
											<form id="saveBranch">
											@csrf
											<input type="hidden" name="log_ticket_id" value="">
											
												<div class="form-group mb-3 row">
													<label class="form-label">Branch Name</label>
													<input type="text" class="form-control" id="branch_name" name="branch_name" >
												</div>

												<div class="form-group mb-3 row">
													<div class="col-lg-12 col-xl-12 text-end">
														<button type="submit" class="btn btn-primary btn-plr">Save Branch</button>
														<button type="button" class="btn btn-danger btn-plr btn-close-branch" >Close</button>
													</div>
												</div>   
											</form>
											</div>                                            
										</div>
									</div>

									</div><!--end col-->
								</div><!--end row-->

						
								<div class="row mt-3">
									<div class="col-12 ">

										<table id="datatable4" class="table align-middle" style="width:100% !important;">
                                        <thead class="thead-light">
                                          <tr>
											<th>#</th>
                                            <th>Branch Name</th>
                                            <th>Created_By</th>
											<th>Action</th>
                                          </tr>
                                        </thead>
                                        <tbody>
                                                                                             
                                        </tbody style="min-height:150px;">
                                      </table>

									</div><!--end col-->

								</div><!--end row-->  
								
								<!--- ADD USERS --------------------------------------->
	
							</div>
							
						</div>
					</div>
							
							
							
					<div class="tab-pane p-3" id="tab_departments" role="tabpanel">
								<div class="row">
								<div class="col-12 col-lg-6 col-xl-6 col-xxl-6">
								   
								<div class="row">
								   <div class="col-12">
								   
								   <button type="button" class="btn btn-danger btn-plr btn-add-depart mb-3"  style="float:right;" id="" >Add <i class="fa fa-plus"></i></button>
								   								   
								   <!--  add new notes ------------------------>
								
									<div id="addDepartment" class="hide"  style="position:absolute;z-index:9999999;right:10px;top:50px;">
									
									<div class="card">
											<div class="card-header" style="background:#433653;">
												<div class="row align-items-center">
													<div class="col">                      
														<h4 class="card-title" style="color:#fff;">Add Departments</h4>                      
													</div><!--end col-->                                                       
												</div>  <!--end row-->                                  
											</div><!--end card-header-->
											<div class="card-body">  
											<form id="saveDepartment">
											@csrf
											
												<div class="form-group mb-3 row">
													<label class="form-label">Departments</label>
													<div class="col-lg-12 col-xl-12">
														<input type="text" class="form-control" id="department" name="department" >
													</div>
												</div>
												<div class="form-group mb-3 row">
													<div class="col-lg-12 col-xl-12 text-end">
														<button type="submit" class="btn btn-primary btn-plr"> Submit </button>
														<button type="button" class="btn btn-danger btn-plr btn-close-depart" >Close</button>
													</div>
												</div>   
											</form>
											</div>                                            
										</div>
									</div>
								</div>
								</div>
																
								
								<div class="row">
								<div class="col-12">   

									 <table id="datatable2" class="table align-middle" style="width:100% !important;">
                                        <thead class="thead-light">
										
                                          <tr>
											<th>#</th>
                                            <th>Department</th>
											<th>Created_By</th>
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
	
						</div>  

						
							<div class="tab-pane p-3" id="tab_designations" role="tabpanel">
								<div class="row">
								<div class="col-12 col-lg-6 col-xl-6 col-xxl-6">
								   
								<div class="row">
								   <div class="col-12">
								   
								   <button type="button" class="btn btn-danger btn-plr btn-add-desig mb-3"  style="float:right;" id="" >Add <i class="fa fa-plus"></i></button>
								   								   
								   <!--  add new notes ------------------------>
								
									<div id="addDesignation" class="hide"  style="position:absolute;z-index:9999999;right:10px;top:50px;">
									
									<div class="card">
											<div class="card-header" style="background:#433653;">
												<div class="row align-items-center">
													<div class="col">                      
														<h4 class="card-title" style="color:#fff;">Add Log Note</h4>                      
													</div><!--end col-->                                                       
												</div>  <!--end row-->                                  
											</div><!--end card-header-->
											<div class="card-body">  
											<form id="saveDesignation">
											@csrf
											
												<div class="form-group mb-3 row">
													<label class="form-label">Designation</label>
													<div class="col-lg-12 col-xl-12">
														<input type="text" class="form-control" id="designation" name="designation" >
													</div>
												</div>
												<div class="form-group mb-3 row">
													<div class="col-lg-12 col-xl-12 text-end">
														<button type="submit" class="btn btn-primary btn-plr"> Submit </button>
														<button type="button" class="btn btn-danger btn-plr btn-close-desig" >Close</button>
													</div>
												</div>   
											</form>
											</div>                                            
										</div>
									</div>
								</div>
								</div>
								
								<div class="row">
								<div class="col-12">   

									 <table id="datatable3" class="table " style="width:100% !important;">
                                        <thead class="thead-light">
										
                                          <tr>
											<th>#</th>
                                            <th>Designations</th>
											<th>Created_By</th>
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
	
						</div>                                                
				
						</div>        
					</div> <!--end card-body-->                            
				</div><!--end card-->
						

						
		</div><!--end col-->
	</div><!--end row-->
</div>			
	<!---  DETAILS MODAL ------------------------------------------------------------>			



<div class="modal fade" id="editUserModal" tabindex="-1" aria-labelledby="exampleModalDefaultLabel" aria-hidden="true" style="display: none;">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h6 class="modal-title m-0" id="exampleModalDefaultLabel">Default Modal</h6>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div><!--end modal-header-->
			<div class="modal-body" style="padding:15px 35px;">

			

                                                     
			</div><!--end modal-body-->

		</div><!--end modal-content-->
	</div><!--end modal-dialog-->
</div>


<div class="modal fade" id="changePassModal" tabindex="-1" aria-labelledby="examplePassModalLabel" aria-hidden="true" style="display: none;">
	<div class="modal-dialog modal-sm" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h6 class="modal-title m-0" id="examplePassModalLabel">Change Password</h6>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div><!--end modal-header-->
			<div class="modal-body" style="padding:15px 35px;">

			<form  id="updateUserPass" method="post" action="{{url('change-user-password')}}" enctype="multipart/form-data">
				@csrf
				<input type="hidden" name="pass_user_id" id="pass_user_id">
				
					<div class="form-group mb-3 row">
						<label class="form-label">New Password</label>
						<input type="text" class="form-control" id="new_pass" name="new_pass" >
					</div>
					
					<div class="form-group mb-3 row">
						<label class="form-label">Confirm Password</label>
						<input type="email" class="form-control" id="confirm_pass" name="confirm_pass" >
					</div>
				<div class="modal-footer mb-3 row">
				<div class="col-lg-12 col-xl-12 text-end">
					<button type="submit" class="btn btn-primary btn-plr">Update</button>
					<button type="button" class="btn btn-danger btn-plr" data-bs-dismiss="modal" >Close</button>
				</div>
			</div>   
					
			</form>


                                                     
			</div><!--end modal-body-->

		</div><!--end modal-content-->
	</div><!--end modal-dialog-->
</div>

@push('scripts')

<script>


$(".btn-close-user").click(function()
{
	$("#addUser").removeClass('show');
	$("#addUser").addClass('hide');
});

$(".btn-add-user").click(function()
{
	$("#addUser").removeClass('hide');
	$("#addUser").addClass('show');
});

$(".btn-close-desig").click(function()
{
	$("#addDesignation").removeClass('show');
	$("#addDesignation").addClass('hide');
});

$(".btn-add-desig").click(function()
{
	$("#addDesignation").removeClass('hide');
	$("#addDesignation").addClass('show');
});

$(".btn-close-depart").click(function()
{
	$("#addDepartment").removeClass('show');
	$("#addDepartment").addClass('hide');
});

$(".btn-add-depart").click(function()
{
	$("#addDepartment").removeClass('hide');
	$("#addDepartment").addClass('show');
});

$(".btn-close-branch").click(function()
{
	$("#addBranch").removeClass('show');
	$("#addBranch").addClass('hide');
});

$(".btn-add-branch").click(function()
{
	$("#addBranch").removeClass('hide');
	$("#addBranch").addClass('show');
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
			url:"{{url('view-users-list')}}",
			data: function (data) 
		    {
               //data.search = $('input[type="search"]').val();
		    },
        },

        columns: [
            {"data": 'DT_RowIndex', name: 'DT_RowIndex', orderable: false, searchable: false  },
			{"data": "name" },
			{"data": "mobile" },
			{"data": "email" },
			{"data": "role_name" },
			{"data": "designation" },
			{"data": "status" },
			{"data": "action" ,name: 'Action',orderable: false, searchable: false },
        ],
});


$("#tab_branch").click(function()
{
	
	var table = $('#datatable4').DataTable({
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
			url:"{{url('view-branches')}}",
			data: function (data) 
		    {
               //data.search = $('input[type="search"]').val();
		    },
        },

        columns: [
            {"data": 'DT_RowIndex', name: 'DT_RowIndex', orderable: false, searchable: false  },
			{"data": "branch" },
			{"data": "user_name" },
			{"data": "action" ,name: 'Action',orderable: false, searchable: false },
        ],
		
		bDestroy:true,
	});

});


$("#tab_depart").click(function()
{
	
    var table2 = $('#datatable2').DataTable({
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
			url:"{{url('view-departments')}}",
			data: function (data) 
			{
			   //data.search = $('input[type="search"]').val();
			},
		},

		columns: [
			{"data": 'DT_RowIndex', name: 'DT_RowIndex', orderable: false, searchable: false  },
			{"data": "department" },
			{"data": "name" },
			{"data": "action" ,name: 'Action',orderable: false, searchable: false },
		],
		
		bDestroy:true,
   });
   
});


$("#tab_desig").click(function()
{
	
    var table2 = $('#datatable3').DataTable({
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
			url:"{{url('view-designations')}}",
			data: function (data) 
			{
			   //data.search = $('input[type="search"]').val();
			},
		},

		columns: [
			{"data": 'DT_RowIndex', name: 'DT_RowIndex', orderable: false, searchable: false  },
			{"data": "designation" },
			{"data": "name" },
			{"data": "action" ,name: 'Action',orderable: false, searchable: false },
		],
		
		bDestroy:true,
   });
   
});




$('#datatable1 tbody').on('click','.edit',function()
{

	var id=$(this).attr('id');
	var Result=$("#editUserModal .modal-body");

			jQuery.ajax({
			type: "GET",
			url: "{{url('edit-user')}}"+"/"+id,
			dataType: 'html',
			//data: {vid: vid},
			success: function(res)
			{
			   Result.html(res);
			}
		});

});


var validate1=$('#saveUser').validate({ 
	
		rules: {
            user_name: {required: true,},
			user_email: {required: true,},
			user_mobile: {required: true,},
			user_role: {required: true,},
			user_desig: {required: true,},
			user_password: {required: true,},
			user_conf_password: {required: true,equalTo:"#user_password",},
           },

	submitHandler: function(form) 
	{
		$.ajax({
		url: "{{route('save-user')}}",
		method: 'post',
		data: $('#saveUser').serialize(),
		dataType:'json',
		
		success: function(result){
			if(result.status == 1)
			{
				toastr.success(result.msg);
				$("#saveUser")[0].reset();
			}
			else
			{
				toastr.error(result.msg);
			}
		}
		});
	  }
	});	

//to change user's password

$('#datatable1 tbody').on('click','.change_pass',function()
{
	var id=$(this).attr('id');
	$("#pass_user_id").val(id);
});


var validate2=$('#updateUserPass').validate({ 
	
		rules: {
            new_pass: {required: true,},
			confirm_pass: {required: true,
							   equalTo:"#new_pass",
							   },
           },
		   messages: {
			confirm_pass: {
				equalTo: "Passwords do not match", // Custom error message
			}
       },
});


$("#datatable1 tbody").on('click','.delete',function()
{
		
	Swal.fire({
	  //title: "Delete",
	  text: "Are you sure, You want to delete this user?",
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
			url: "{{url('delete-user')}}"+"/"+id,
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

$("#datatable1 tbody").on('click','.changePass',function()
{

		var id=$(this).attr('id');

		  jQuery.ajax({
			type: "get",
			url: "{{url('delete-user')}}"+"/"+id,
			dataType: 'json',
			//data: {vid: vid},
			success: function(res)
			{
			   if(res.status==true)
			   {
				   toastr.success(res.msg);
			   }
			   else
			   {
				 toastr.error(res.msg); 
			   }
			}
		  });
});

  var validate3=$('#saveDesignation').validate({ 
	
		rules: {
            designation: {required: true,},
           },

	submitHandler: function(form) 
	{
		$.ajax({
		url: "{{route('save-designation')}}",
		method: 'post',
		data: $('#saveDesignation').serialize(),
		dataType:'json',
		
		success: function(result){
			if(result.status == 1)
			{
				toastr.success(result.msg);
				$("#saveDesignation")[0].reset();
				$('#datatable2').DataTable().ajax.reload(null, false);
			}
			else
			{
				toastr.error(result.msg);
			}
		}
		});
	  }
	});	

$("#datatable3 tbody").on('click','.delete_desig',function()
{
	
	
	Swal.fire({
	  //title: "Delete",
	  text: "Are you sure, You want to delete this designation?",
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
			url: "{{url('delete-designation')}}"+"/"+id,
			dataType: 'json',
			//data: {vid: vid},
			success: function(res)
			{
			   if(res.status==true)
			   {
				   toastr.success(res.msg);
				   $('#datatable2').DataTable().ajax.reload(null, false);
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



 var validate3=$('#saveDepartment').validate({ 
	
		rules: {
            department: {required: true,},
           },

	submitHandler: function(form) 
	{
		$.ajax({
		url: "{{route('save-department')}}",
		method: 'post',
		data: $('#saveDepartment').serialize(),
		dataType:'json',
		
		success: function(result){
			if(result.status == 1)
			{
				toastr.success(result.msg);
				$("#saveDepartment")[0].reset();
				$('#datatable2').DataTable().ajax.reload(null, false);
			}
			else
			{
				toastr.error(result.msg);
			}
		}
		});
	  }
	});	

$("#datatable2 tbody").on('click','.delete_depart',function()
{
	Swal.fire({
	  //title: "Delete",
	  text: "Are you sure, You want to delete this department?",
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
			url: "{{url('delete-department')}}"+"/"+id,
			dataType: 'json',
			//data: {vid: vid},
			success: function(res)
			{
			   if(res.status==true)
			   {
				   toastr.success(res.msg);
				   $('#datatable2').DataTable().ajax.reload(null, false);
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

 var validate4=$('#saveBranch').validate({ 
	
		rules: {
            branch_name: {required: true,},
           },

	submitHandler: function(form) 
	{
		$.ajax({
		url: "{{route('save-branch')}}",
		method: 'post',
		data: $('#saveBranch').serialize(),
		dataType:'json',
		
		success: function(result){
			if(result.status == 1)
			{
				toastr.success(result.msg);
				$("#saveBranch")[0].reset();
				$('#datatable4').DataTable().ajax.reload(null, false);
			}
			else
			{
				toastr.error(result.msg);
			}
		}
		});
	  }
	});	

$("#datatable4 tbody").on('click','.delete_branch',function()
{
	Swal.fire({
	  //title: "Delete",
	  text: "Are you sure, You want to delete this branch?",
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
			url: "{{url('delete-branch')}}"+"/"+id,
			dataType: 'json',
			//data: {vid: vid},
			success: function(res)
			{
			   if(res.status==true)
			   {
				   toastr.success(res.msg);
				   $('#datatable4').DataTable().ajax.reload(null, false);
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

