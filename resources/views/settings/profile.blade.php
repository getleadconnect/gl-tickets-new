@extends('layouts.master')
@section('title','Tickets')
@section('contents')

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
                                <h4 class="page-title">PROFILE</h4>

								
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
										<h5> Profile and Change Password</h5>
										</div><!--end col-->  
										<div class="col-2 text-end">                      
                                           
										   <!---- button here ---------->

                                        </div><!--end col-->  
                                    </div>  <!--end row-->                                  
                                </div><!--end card-header-->

                            </div><!--end card-->
                        </div><!--end col-->
                    </div><!--end row-->

                    <div class="row">
                        <div class=" col-md-4 col-lg-4 col-xl-4 col-xxl-4">
						 <div class="card">
						 <div class="card-header" style="background-color:#a193b3;padding:2px 10px !important;" >
						 <h6 style="color:#000 !important;"> Profile </h6>
						 </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class=" col-12">
                                            <div class="media">
                                                <!--<img class="d-flex align-self-center me-3 rounded-circle" src="assets/images/small/opp-1.png" alt="" height="50">-->
                                                <div class="media-body align-self-center">

												<form id="changeProfile">
												@csrf
												<input type="hidden" name="user_id" id="user_id" value="{{$login_user->id}}">
												<div class="row mt-3">
													<div class="col-lg-12  align-self-center">
													<label for="assign_agents">Name</label>
														<input type="text" class="form-control" name="user_name" id="user_name" value="{{$login_user->name}}" >
													</div>
												</div><!--end row-->                     

												<div class="row mt-3">
													<div class="col-lg-12  align-self-center">
													<label for="assign_agents">Email</label>
														<input type="email" class="form-control" name="user_email" id="user_email" value="{{$login_user->email}}">
													</div>
												</div><!--end row-->           

												<div class="row mt-3">
													<div class="col-lg-12  align-self-center">
													<label for="assign_agents">Mobile</label>
														<input type="text" class="form-control readonly" disabled name="user_mobile" id="user_mobile" value="{{'+'.$login_user->country_code.$login_user->mobile }}" readonly>
													</div>
												</div><!--end row-->     

												<div class="row mt-3">
													<div class="col-lg-12 align-self-center">
													   <button type="submit" class="btn btn-primary btn-pad"> Save </button>
													</div>
												</div><!--end row-->     
                                                </form>   
                                                </div><!--end media-body-->
                                            </div><!--end media-->
                                        </div><!--end col-->
										
                                        <div class="col-sm-6 d-flex  align-self-center flex-gap" >
                                        </div><!--end col-->
										
                                    </div><!--end row-->
                                </div><!--end card-body-->
                            </div><!--end card-->
						
                        </div><!--end col-->

                    
					<div class=" col-md-4 col-lg-4 col-xl-4 col-xxl-4">
						 <div class="card">
						 <div class="card-header" style="background-color:#a193b3;padding:2px 10px !important;" >
						 <h6 style="color:#000 !important;"> Change Password </h6>
						 </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class=" col-12">
                                            <div class="media">
                                                <!--<img class="d-flex align-self-center me-3 rounded-circle" src="assets/images/small/opp-1.png" alt="" height="50">-->
                                                <div class="media-body align-self-center">

												<form id="changePassword">
												@csrf												
												<input type="hidden" name="pass_user_id" id="pass_user_id" value="{{$login_user->id}}">
												
												<div class="row mt-3">
													<div class="col-lg-12  align-self-center">
													<label for="assign_agents">New Password</label>
														<input type="password" class="form-control" name="new_password" id="new_password" >
													</div>
												</div><!--end row-->                     

												<div class="row mt-3">
													<div class="col-lg-12  align-self-center">
													<label for="assign_agents">Confirm Password</label>
														<input type="password" class="form-control" name="confirm_password" id="confirm_password">
													</div>
												</div><!--end row-->           
												<div class="row mt-3">
													<div class="col-lg-12 align-self-center">
													   <button type="submit" class="btn btn-primary btn-pad"> Save </button>
													</div>
												</div><!--end row-->     
                                                </form>  
												 
                                                </div><!--end media-body-->
                                            </div><!--end media-->
                                        </div><!--end col-->
										
                                        <div class="col-sm-6 d-flex  align-self-center flex-gap" >
                                        </div><!--end col-->
										
                                    </div><!--end row-->
                                </div><!--end card-body-->
                            </div><!--end card-->
						
                        </div><!--end col-->

                    </div><!--end row-->

</div>			
	<!---  DETAILS MODAL ------------------------------------------------------------>			

@push('scripts')

<script>

var validate1=$('#changeProfile').validate({ 
	
		rules: {
            name: {required: true,},
			email: {required: true,},
           },

	submitHandler: function(form) 
	{
		$.ajax({
		url: "{{route('change-profile')}}",
		method: 'post',
		data: $('#changeProfile').serialize(),
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
	  }
	});	



var validate2=$('#changePassword').validate({ 
	
		rules: {
            new_password: {required: true,},
			confirm_password: {required: true,
							   equalTo:"#new_password",
							   },
           },
		   messages: {
			confirm_password: {
				equalTo: "Passwords do not match", // Custom error message
			}
       },

	submitHandler: function(form) 
	{

		$.ajax({
		url: "{{route('change-password')}}",
		method: 'post',
		data: $('#changePassword').serialize(),
		dataType:'json',
		
		success: function(result){
			if(result.status == 1)
			{
				toastr.success(result.msg);
				$("#new_password").val("");
				$("#confirm_password").val("");
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

