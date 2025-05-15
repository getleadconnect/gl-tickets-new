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
.w-100{ width:100px;}

</style>
 <div class="container-fluid">
 
					<div class="row">
                        <div class="col-sm-12">
                            <div class="page-title-box">
                                <div class="float-end">
                                    <ol class="breadcrumb">
                                       <li class="breadcrumb-item"><a href="{{url('dashboard')}}">Home</a>
										</li><!--end nav-item-->
										<li class="breadcrumb-item active"><a href="#">Brand & Categories</a>
										</li><!--end nav-item-->
                                    </ol>
                                </div>
                                <h4 class="page-title">Brands And Categories </h4>

								
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
								<a class="nav-link active show font-16 w-100" data-bs-toggle="tab" href="#tab_brands" role="tab" aria-selected="true"><strong>Brands</strong></a>
							</li>
                                 
							<li class="nav-item">
								<a class="nav-link font-16" id="tab_cat" data-bs-toggle="tab" href="#tab_category" role="tab" aria-selected="false"><strong>Categories</strong></a>
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
					
							<div class="tab-pane p-3 active show" id="tab_brands" role="tabpanel">
								<div class="row">
								<div class="col-12 col-lg-6 col-xl-6 col-xxl-6">
								   
								<div class="row">
								   <div class="col-12">
								   
								   <button type="button" class="btn btn-danger btn-plr btn-add-brand mb-3"  style="float:right;" id="" >Add <i class="fa fa-plus"></i></button>
								   								   
								   <!--  add new notes ------------------------>
								
									<div id="addBrands" class="hide"  style="position:absolute;z-index:9999999;right:10px;top:50px;">
									
									<div class="card">
											<div class="card-header" style="background:#433653;">
												<div class="row align-items-center">
													<div class="col">                      
														<h4 class="card-title" style="color:#fff;">Add Brands</h4>                      
													</div><!--end col-->                                                       
												</div>  <!--end row-->                                  
											</div><!--end card-header-->
											<div class="card-body">  
											<form id="saveBrand">
											@csrf
											
												<div class="form-group mb-3 row">
													<label class="form-label">Brand Name</label>
													<div class="col-lg-12 col-xl-12">
														<input type="text" class="form-control" id="brand_name" name="brand_name" >
													</div>
												</div>
												<div class="form-group mb-3 row">
													<div class="col-lg-12 col-xl-12 text-end">
														<button type="submit" class="btn btn-primary btn-plr"> Submit </button>
														<button type="button" class="btn btn-danger btn-plr btn-close-brand" >Close</button>
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

									 <table id="datatable1" class="table align-middle" style="width:100% !important;">
                                        <thead class="thead-light">
										
                                          <tr>
											<th>#</th>
                                            <th>Brand</th>
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
						
							
												
							<div class="tab-pane p-3" id="tab_category" role="tabpanel">
								<div class="row">
								<div class="col-12 col-lg-6 col-xl-6 col-xxl-6">
								   
								<div class="row">
								   <div class="col-12">
								   
								   <button type="button" class="btn btn-danger btn-plr btn-add-cat mb-3"  style="float:right;" id="" >Add <i class="fa fa-plus"></i></button>
								   								   
								   <!--  add new notes ------------------------>
								
									<div id="addCategory" class="hide"  style="position:absolute;z-index:9999999;right:10px;top:50px;">
									
									<div class="card">
											<div class="card-header" style="background:#433653;">
												<div class="row align-items-center">
													<div class="col">                      
														<h4 class="card-title" style="color:#fff;">Add Category</h4>                      
													</div><!--end col-->                                                       
												</div>  <!--end row-->                                  
											</div><!--end card-header-->
											<div class="card-body">  
											<form id="saveCategory">
											@csrf
											
												<div class="form-group mb-3 row">
													<label class="form-label">Brand</label>
													<div class="col-lg-12 col-xl-12">
													<select class="form-select" id="brand_id" name="brand_id" >
													<option value="" selected disabled>select</option>
													@foreach($brand as $key=>$row)
														<option value="{{$row->id}}">{{$row->brand}}</option>
													@endforeach
													</select>
													</div>
												</div>
												
												<div class="form-group mb-3 row">
													<label class="form-label">Category</label>
													<div class="col-lg-12 col-xl-12">
														<input type="text" class="form-control" id="category" name="category" >
													</div>
												</div>
												
												<div class="form-group mb-3 row">
													<div class="col-lg-12 col-xl-12 text-end">
														<button type="submit" class="btn btn-primary btn-plr"> Submit </button>
														<button type="button" class="btn btn-danger btn-plr btn-close-cat" >Close</button>
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
                                            <th>Category</th>
											<th>Brand</th>
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


@push('scripts')

<script>


$(".btn-close-brand").click(function()
{
	$("#addBrands").removeClass('show');
	$("#addBrands").addClass('hide');
});

$(".btn-add-brand").click(function()
{
	$("#addBrands").removeClass('hide');
	$("#addBrands").addClass('show');
});

$(".btn-close-cat").click(function()
{
	$("#addCategory").removeClass('show');
	$("#addCategory").addClass('hide');
});

$(".btn-add-cat").click(function()
{
	$("#addCategory").removeClass('hide');
	$("#addCategory").addClass('show');
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
			url:"{{url('view-brands')}}",
			data: function (data) 
		    {
               //data.search = $('input[type="search"]').val();
		    },
        },

        columns: [
            {"data": 'DT_RowIndex', name: 'DT_RowIndex', orderable: false, searchable: false  },
			{"data": "brand" },
			{"data": "name" },
			{"data": "action" ,name: 'Action',orderable: false, searchable: false },
        ],
});

$("#tab_cat").click(function()
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
			url:"{{url('view-categories')}}",
			data: function (data) 
			{
			   //data.search = $('input[type="search"]').val();
			},
		},

		columns: [
			{"data": 'DT_RowIndex', name: 'DT_RowIndex', orderable: false, searchable: false  },
			{"data": "category" },
			{"data": "brand" },
			{"data": "name" },
			{"data": "action" ,name: 'Action',orderable: false, searchable: false },
		],
		
		bDestroy:true,
   });
   
});


var validate1=$('#saveBrand').validate({ 
	
		rules: {
            brand_name: {required: true,},
           },

	submitHandler: function(form) 
	{
		$.ajax({
		url: "{{route('save-brand')}}",
		method: 'post',
		data: $('#saveBrand').serialize(),
		dataType:'json',
		
		success: function(result){
			if(result.status == 1)
			{
				toastr.success(result.msg);
				$("#saveBrand")[0].reset();
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


$("#datatable1 tbody").on('click','.delete_brand',function()
{
	
	
	Swal.fire({
	  //title: "Delete",
	  text: "Are you sure, You want to delete this brand?",
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
			url: "{{url('delete-brand')}}"+"/"+id,
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


  var validate3=$('#saveCategory').validate({ 
	
		rules: {
			brand_id: {required: true,},
            category: {required: true,},
           },

	submitHandler: function(form) 
	{
		$.ajax({
		url: "{{route('save-category')}}",
		method: 'post',
		data: $('#saveCategory').serialize(),
		dataType:'json',
		
		success: function(result){
			if(result.status == 1)
			{
				toastr.success(result.msg);
				$("#saveCategory")[0].reset();
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

$("#datatable2 tbody").on('click','.delete_cat',function()
{
	
	
	Swal.fire({
	  //title: "Delete",
	  text: "Are you sure, You want to delete this category?",
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
			url: "{{url('delete-category')}}"+"/"+id,
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


</script>
@endpush
@endsection

