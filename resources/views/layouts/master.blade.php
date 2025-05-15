<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>

        <meta charset="utf-8" />
                <title>Gl-Tickets - Admin Dashboard</title>
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
                <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
                <meta content="" name="author" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />

                <!-- App favicon -->
                <link rel="shortcut icon" href="{{url('assets/favicon/favicon.ico')}}">

         <!-- App css -->
         <link href="{{url('assets/css/bootstrap.min.css')}}" rel="stylesheet" type="text/css" />
		 <link href="{{url('assets/libs/mobius1-selectr/selectr.min.css')}}" rel="stylesheet" type="text/css" />
		 
         <link href="{{url('assets/css/icons.min.css')}}" rel="stylesheet" type="text/css" />
         <link href="{{url('assets/css/app.min.css')}}" rel="stylesheet" type="text/css" />
		 <link href="{{url('assets/libs/toastr/css/toastr.min.css')}}" rel="stylesheet" type="text/css" />
		 <link href="{{url('assets/intl-tel-input17.0.3/intlTelInput.min.css')}}" rel="stylesheet"/>
		 
		  <link href="{{url('assets/libs/sweetalert2/sweetalert2.min.css')}}" rel="stylesheet" type="text/css" />
		  <link href="{{url('assets/libs/vanillajs-datepicker/css/datepicker.min.css')}}" rel="stylesheet" type="text/css" />
		  <!--<link href="{{url('assets/libs/simple-datatables/style.css')}}" rel="stylesheet" type="text/css" />-->
		  <link href="{{url('assets/datatable/css/dataTables.bootstrap5.min.css')}}" rel="stylesheet" />
		 
	<style>
	.offcanvas-header
	{
		background:#433653 !important;
	}
	
	.form-select
	{
	   padding: 0.5rem 1.5rem 0.25rem .5rem !important;
	}
	
	</style>

    </head>

    <body id="body">
        <!-- leftbar-tab-menu -->
        
		@include('layouts.sidebar');
        <!-- end leftbar-tab-menu-->

        <!-- Top Bar Start -->
		
        <!-- Top Bar Start -->
        <div class="topbar">            
            <!-- Navbar -->
            <nav class="navbar-custom" id="navbar-custom">    
			
                <ul class="list-unstyled topbar-nav float-end mb-0">
				
					<li class="dropdown">
						<button type="button" style="float:right;" class="btn btn-primary dropdown-toggle show btn-pad" data-bs-toggle="dropdown" aria-expanded="true">Add&nbsp;&nbsp;<i class="fa fa-plus"></i></button>
                        <div class="dropdown-menu" data-popper-placement="bottom-start" style="position: absolute; inset: 0px auto auto 0px; margin: 0px; transform: translate(16px, 112px);">
							<a class="dropdown-item " href="javascript:;" id="btn_new_ticket"  data-bs-toggle="offcanvas" data-bs-target="#new-ticket"   > <i class="fa fa-file-alt"></i>&nbsp;&nbsp;Ticket</a>
							<a class="dropdown-item" href="javascript:;" id="btn_new_customer" data-bs-toggle="offcanvas" data-bs-target="#new-customer" ><i class="fa fa-user"></i>&nbsp;&nbsp;Customer</a>
							<a class="dropdown-item" href="javascript:;" id="btn_new_product" data-bs-toggle="offcanvas" data-bs-target="#new-product" ><i class="fa fa-file-alt"></i>&nbsp;&nbsp;Product</a>
						</div>
                    </li><!--end topbar-language-->

                    <li class="dropdown notification-list">
                        <a class="nav-link dropdown-toggle arrow-none nav-icon" data-bs-toggle="dropdown" href="#" role="button"
                            aria-haspopup="false" aria-expanded="false">
                            <i class="ti ti-bell"></i>
                            <span class="alert-badge"></span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end dropdown-lg pt-0">
                
                            <h6 class="dropdown-item-text font-15 m-0 py-3 border-bottom d-flex justify-content-between align-items-center">
                                Notifications <span class="badge bg-soft-primary badge-pill">2</span>
                            </h6> 
                            <div class="notification-menu" data-simplebar>
                                <!-- item-->
                                <a href="#" class="dropdown-item py-3">
                                    <small class="float-end text-muted ps-2">2 min ago</small>
                                    <div class="media">
                                        <div class="avatar-md bg-soft-primary">
                                            <i class="ti ti-chart-arcs"></i>
                                        </div>
                                        <div class="media-body align-self-center ms-2 text-truncate">
                                            <h6 class="my-0 fw-normal text-dark">Your order is placed</h6>
                                            <small class="text-muted mb-0">Dummy text of the printing and industry.</small>
                                        </div><!--end media-body-->
                                    </div><!--end media-->
                                </a><!--end-item-->
                                <!-- item-->
                                <a href="#" class="dropdown-item py-3">
                                    <small class="float-end text-muted ps-2">10 min ago</small>
                                    <div class="media">
                                        <div class="avatar-md bg-soft-primary">
                                            <i class="ti ti-device-computer-camera"></i>
                                        </div>
                                        <div class="media-body align-self-center ms-2 text-truncate">
                                            <h6 class="my-0 fw-normal text-dark">Meeting with designers</h6>
                                            <small class="text-muted mb-0">It is a long established fact that a reader.</small>
                                        </div><!--end media-body-->
                                    </div><!--end media-->
                                </a><!--end-item-->
                                <!-- item-->
                                <a href="#" class="dropdown-item py-3">
                                    <small class="float-end text-muted ps-2">40 min ago</small>
                                    <div class="media">
                                        <div class="avatar-md bg-soft-primary">                                                    
                                            <i class="ti ti-diamond"></i>
                                        </div>
                                        <div class="media-body align-self-center ms-2 text-truncate">
                                            <h6 class="my-0 fw-normal text-dark">UX 3 Task complete.</h6>
                                            <small class="text-muted mb-0">Dummy text of the printing.</small>
                                        </div><!--end media-body-->
                                    </div><!--end media-->
                                </a><!--end-item-->
                                <!-- item-->
                                <a href="#" class="dropdown-item py-3">
                                    <small class="float-end text-muted ps-2">1 hr ago</small>
                                    <div class="media">
                                        <div class="avatar-md bg-soft-primary">
                                            <i class="ti ti-drone"></i>
                                        </div>
                                        <div class="media-body align-self-center ms-2 text-truncate">
                                            <h6 class="my-0 fw-normal text-dark">Your order is placed</h6>
                                            <small class="text-muted mb-0">It is a long established fact that a reader.</small>
                                        </div><!--end media-body-->
                                    </div><!--end media-->
                                </a><!--end-item-->
                                <!-- item-->
                                <a href="#" class="dropdown-item py-3">
                                    <small class="float-end text-muted ps-2">2 hrs ago</small>
                                    <div class="media">
                                        <div class="avatar-md bg-soft-primary">
                                            <i class="ti ti-users"></i>
                                        </div>
                                        <div class="media-body align-self-center ms-2 text-truncate">
                                            <h6 class="my-0 fw-normal text-dark">Payment Successfull</h6>
                                            <small class="text-muted mb-0">Dummy text of the printing.</small>
                                        </div><!--end media-body-->
                                    </div><!--end media-->
                                </a><!--end-item-->
                            </div>
                            <!-- All-->
                            <a href="javascript:void(0);" class="dropdown-item text-center text-primary">
                                View all <i class="fi-arrow-right"></i>
                            </a>
                        </div>
                    </li>

                    <li class="dropdown">
                        <a class="nav-link dropdown-toggle nav-user" data-bs-toggle="dropdown" href="#" role="button"
                            aria-haspopup="false" aria-expanded="false">
                            <div class="d-flex align-items-center">
                                <img src="{{url('assets/images/users/user-vector.png')}}" alt="profile-user" class="rounded-circle me-2 thumb-sm" />
                                <div>
                                    <small class="d-none d-md-block font-11">
									
									@if(Auth::user()->role_id==1)
										Admin
									@elseif(Auth::user()->role_id==1)
										Agent
									@else
										Manager
									@endif
									</small>
                                    <span class="d-none d-md-block fw-semibold font-12">{{Auth::user()->name}} <i
                                            class="mdi mdi-chevron-down"></i></span>
                                </div>
                            </div>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end">
                            <a class="dropdown-item" href="{{url('profile')}}"><i class="ti ti-user font-16 me-1 align-text-bottom"></i> Profile</a>
                            <a class="dropdown-item" href="{{url('profile')}}"><i class="ti ti-settings font-16 me-1 align-text-bottom"></i> Change Password</a>
                            <div class="dropdown-divider mb-0"></div>
							
                            <a class="dropdown-item" href="#" onclick="event.preventDefault();document.getElementById('logout-form2').submit();" >
							<i class="ti ti-power font-16 me-1 align-text-bottom" style="color:red;"></i> Logout</a>
						
						    <form id="logout-form2" action="{{url('logout')}}" method="post" class="d-none">
								@csrf
							</form>

                        </div>
                    </li><!--end topbar-profile-->
                   <!-- <li class="notification-list">
                        <a class="nav-link arrow-none nav-icon offcanvas-btn" href="#" data-bs-toggle="offcanvas" data-bs-target="#Appearance" role="button" aria-controls="Rightbar">
                            <i class="ti ti-settings ti-spin"></i>
                        </a>
                    </li>-->
                </ul><!--end topbar-nav-->

                <ul class="list-unstyled topbar-nav mb-0">                        
                    <li>
                        <button class="nav-link button-menu-mobile nav-icon" id="togglemenu">
                            <i class="ti ti-menu-2"></i>
                        </button>
                    </li> 
                    <li class="hide-phone app-search">
                        <form role="search" action="#" method="get">
                            <input type="search" name="search" class="form-control top-search mb-0" placeholder="Type text...">
                            <button type="submit"><i class="ti ti-search"></i></button>
                        </form>
                    </li>                       
                </ul>
            </nav>
            <!-- end navbar-->
        </div>
		
        <!-- Top Bar End -->
        <!-- Top Bar End -->
		
		@php
			$brand=\App\Models\Brand::orderBy('id','ASC')->get();	
		@endphp
		<div class="page-wrapper">
            <!-- Page Content-->
            <div class="page-content-tab">
			
				<!-- container start --->
				
				@yield('contents')
				
				<!-- container end ----->

                <!--Start Rightbar-->
                <!--Start Rightbar/offcanvas-->
                <div class="offcanvas offcanvas-end" tabindex="-1" id="new-ticket" aria-labelledby="AppearanceLabel">
                    <div class="offcanvas-header border-bottom" >
                      <h4 class="m-0 font-18" style="color:#fff;" >Create New Tickets</h4>
                      <button type="button" class="btn-offcanvas-close text-reset p-0 m-0 align-self-center close_btn" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body" style="overflow-y:scroll;height:95%;">  
					
	
                    </div><!--end offcanvas-body-->
                </div>
				
	
			<!--Start Rightbar/offcanvas   -  NEW CUSTOMER-->
                <div class="offcanvas offcanvas-end" tabindex="-1" id="new-customer" aria-labelledby="AppearanceLabel">
                    <div class="offcanvas-header border-bottom">
                      <h4 class="m-0 font-18" style="color:#fff;">Create New Customer</h4>
                      <button type="button" class="btn-offcanvas-close text-reset p-0 m-0 align-self-center" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body">  
					
					<form id="createNewCustomer">
					@csrf
					
					<input type="hidden" name="new_customer_tab" value="offcanvas"> <!-- check data from modal box or offcanvas-->

						<div class="mb-3">
							<label for="customer_name">Name</label>
							<input type="text" class="form-control" id="customer_name" name="customer_name"  placeholder="Enter Name">
						</div>
						<div class="mb-3">
							<label for="description">Contact Number</label>
							<input type="hidden" class="form-control" name="country_code" id="country_code" value="+91"  required>
							<br>
							<input type="number" pattern="[0-9]{10}" class="form-control" id="contact_number" name="contact_number" style="height:38px !important;" placeholder="Mobile Number">
						</div>
						
						<div class="mb-3">
							<label for="email">Email</label>
							<input type="email" class="form-control" id="email" name="email" placeholder="email">
						</div>
						
						<div class="mb-3">
							<label for="description">Company Name</label>
							<input type="text" class="form-control" id="company_name" name="company_name" placeholder="Description">
						</div>

						<div class="row">
							<div class="col-12 text-right" style="text-align:right;">
								<button type="button" class="btn btn-danger btn-pad" data-bs-dismiss="offcanvas" >Cancel</button>
								<button type="submit" class="btn btn-primary btn-pad">Save Customer</button>
							</div>
						</div>

					</form>                                       
	
                    </div><!--end offcanvas-body-->
                </div>

	<!--Start Rightbar/offcanvas   -  NEW PRODUCT-->
                <div class="offcanvas offcanvas-end" tabindex="-1" id="new-product" aria-labelledby="AppearanceLabel">
                    <div class="offcanvas-header border-bottom">
                      <h4 class="m-0 font-18" style="color:#fff;">Create New Product</h4>
                      <button type="button" class="btn-offcanvas-close text-reset p-0 m-0 align-self-center" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body">  
										
	
                    </div><!--end offcanvas-body-->
                </div>
				
                <!--end Rightbar/offcanvas-->
                 <!--end Rightbar-->

		<div class="modal fade" id="createCustomerModal" tabindex="-1" role="dialog" aria-labelledby="createCustomerModalTitle" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered" style="margin-right:0px !important;width:375px !important;" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h6 class="modal-title m-0" id="createCustomerModalTitle">New Customer</h6>
							<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						</div><!--end modal-header-->
						<form id="createCustomer">
						@csrf
						
						<input type="hidden" name="new_customer_tab" value="modal"> <!-- check data from modal box or offcanvas-->

							<div class="modal-body">
								<div class="mb-3">
									<label for="tkt_customer_name">Name</label>
									<input type="text" class="form-control" id="tkt_customer_name" name="tkt_customer_name"  placeholder="Enter Name">
								</div>
								<div class="mb-3">
									<label for="contact_number">Contact Number</label>
									<input type="hidden" class="form-control" name="tkt_country_code" id="tkt_country_code" value="+91"  required>
									<br>
									<input type="text" class="form-control" id="tkt_contact_number" name="tkt_contact_number" placeholder="contact_number">
								</div>
								
								<div class="mb-3">
									<label for="email">Email</label>
									<input type="email" class="form-control" id="tkt_email"  name="tkt_email" placeholder="email">
								</div>
								
								<div class="mb-3">
									<label for="company_name">Company Name</label>
									<input type="text" class="form-control" id="tkt_company_name" name="tkt_company_name" placeholder="company Name">
								</div>
						</div><!--end modal-body-->
						<div class="modal-footer">
							<button type="button" class="btn btn-danger btn-pad" data-bs-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-primary btn-pad">Save changes</button>
						</div><!--end modal-footer-->
						
						</form>
						
					</div><!--end modal-content-->
				</div><!--end modal-dialog-->
			</div>

			
                <!--Start Footer-->
                <!-- Footer Start -->
                <footer class="footer text-center text-sm-start">
                &copy; <script>
                    document.write(new Date().getFullYear())
                </script> Getlead <span class="text-muted d-none d-sm-inline-block float-end">Prowered <i class="mdi mdi-heart text-danger"></i> by Getlead</span>
            </footer>
                <!-- end Footer -->                
                <!--end footer-->
            </div>
            <!-- end page content -->
        </div>
			
		
        <!-- end page-wrapper -->

        <!-- Javascript  -->   
        <!-- vendor js -->
        
        <script src="{{url('assets/libs/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
		
		<script src="{{url('assets/js/jquery.min.js')}}"></script>
		
        <script src="{{url('assets/libs/simplebar/simplebar.min.js')}}"></script>
        <script src="{{url('assets/libs/feather-icons/feather.min.js')}}"></script>
        <script src="{{url('assets/libs/apexcharts/apexcharts.min.js')}}"></script>
		<script src="{{url('assets/js/jquery-validation/jquery.validate.min.js')}}"></script>
		<script src="{{url('assets/libs/toastr/js/toastr.min.js')}}"></script>
		
		<script src="{{url('assets/libs/mobius1-selectr/selectr.min.js')}}"></script>
		
		<script src="{{url('assets/intl-tel-input17.0.3/intlTelInput.min.js')}}"></script>

		<script src="{{url('assets/js/moment.js')}}"></script>
        <script src="{{url('assets/libs/imask/imask.min.js')}}"></script>
		<script src="{{url('assets/libs/sweetalert2/sweetalert2.min.js')}}"></script>
		<script src="{{url('assets/libs/vanillajs-datepicker/js/datepicker-full.min.js')}}"></script>
		<script src="{{url('assets/js/moment.js')}}"></script>
        <script src="{{url('assets/libs/imask/imask.min.js')}}"></script>
		
		<!--<script src="{{url('assets/libs/simple-datatables/umd/simple-datatables.js')}}"></script>
		<script src="{{url('assets/js/pages/datatable.init.js')}}"></script> -->
		
		<script src="{{url('assets/datatable/js/jquery.dataTables.min.js')}}"></script>
		<script src="{{url('assets/datatable/js/dataTables.bootstrap5.min.js')}}"></script>
		<script src="{{url('assets/js/table-datatable.js')}}"></script>
				
        <!-- App js -->
        <script src="{{url('assets/js/app.js')}}"></script>
		
		@stack('scripts')
		
		@if(Session::get('success'))
			<script>
				toastr.success("{{Session::get('success')}}");
			</script>
		@endif

		@if (Session::get('fail'))
			<script>
				toastr.error("{{Session::get('fail')}}");
			</script>
		@endif
		
        <script>
		
		$(document).ready(function()
		{
			$("#iconDash").trigger('click');
		});
		
		$(document).on('click','.menuIcon',function()
		{
			$("#MetricaDashboard").removeClass('active');
			$("#MetricaDashboard").removeClass('show');
		});
		
		//new Selectr("#assignedTo",{multiple:!0});
		//new Selectr("#notifyTo",{multiple:!0});
		
	
		var phone_number1 = window.intlTelInput(document.querySelector("#contact_number"), {
		  separateDialCode: true,
		  preferredCountries:["in"],
		  hiddenInput: "mobile_number",
		  utilsScript:"{{url('assets/intl-tel-input17.0.3/utils.js')}}"
		});
		
		var phone_number2 = window.intlTelInput(document.querySelector("#tkt_contact_number"), {
		  separateDialCode: true,
		  preferredCountries:["in"],
		  hiddenInput: "mobile_number",
		  utilsScript:"{{url('assets/intl-tel-input17.0.3/utils.js')}}"
		});
		
		var validate=$('#createTicket').validate({ 
			rules: {
				issue: {required: true,},
				description: { required: true, },
				customer_id: {required: true,},
				branch_id:{required:true,},
				issue: {required: true,},
				tracking_number: { required: true, },
				status: {required: true,},
				priority:{required:true,},
				assignedTo: {required: true,},
				notifyTo: { required: true, },
				due_date: {required: true,},
				closed_time:{required:true,},
				ticket_label: {required: true,},
			   }
		});
		
		$(document).on('click','.close_btn',function()
		{
			validate.resetForm();
		});
		
	

$(document).on('click','#btn_new_ticket',function()
{
	var cid=0;
	var Result=$("#new-ticket .offcanvas-body");

			jQuery.ajax({
			type: "GET",
			url: "{{url('add-new-ticket')}}"+"/"+cid,
			dataType: 'html',
			//data: {vid: vid},
			success: function(res)
			{
			   Result.html(res);
			}
		});
	
});	


$(document).on('click',"#btn_new_product",function()
{

	var Result=$("#new-product .offcanvas-body");
		
		jQuery.ajax({
			type: "GET",
			url: "{{url('add-product')}}",
			dataType: 'html',
			//data: {vid: vid},
			success: function(res)
			{
			   Result.html(res);
			}
		});	
});


			
	var validate2=$('#createNewCustomer').validate({ 
	
		rules: {
            customer_name: {required: true,},
			contact_number: { required: true, },
			email: {required: true,},
			company_name:{required:true,},
           },

	submitHandler: function(form) 
	{

		var code=phone_number1.getSelectedCountryData()['dialCode'];
		$("#country_code").val(code);
				
		$.ajax({
		url: "{{route('create-customer')}}",
		method: 'post',
		data: $('#createNewCustomer').serialize(),
		dataType:'json',
		
		success: function(result){
			if(result.status == 1)
			{
				toastr.success(result.msg);
				$("#createNewCustomer")[0].reset();
			}
			else
			{
				toastr.error(result.msg);
			}
		}
		});
	  }
	});


//ticket modal box 
		
var validate=$('#createCustomer').validate({ 
	
		rules: {
            customer_name: {required: true,},
			tkt_contact_number: { required: true, },
			email: {required: true,},
			company_name:{required:true,},
           },

	submitHandler: function(form) 
	{
		var code=phone_number2.getSelectedCountryData()['dialCode'];
		$("#tkt_country_code").val(code);
		
		$.ajax({
		url: "{{route('create-customer')}}",
		method: 'post',
		data: $('#createCustomer').serialize(),
		dataType:'json',
		
		success: function(result){
			if(result.status == 1)
			{
				toastr.success(result.msg);
				
				var opt="<option value='"+result.data.id+"'>"+result.data.name+"</option>";
				$("#customer").append(opt);
				$("#createCustomer")[0].reset();
				$("#createCustomerModal").modal('hide')
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

    </body>
    <!--end body-->
</html>