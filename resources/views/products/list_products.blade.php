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
                                        <li class="breadcrumb-item"><a href="#">Metrica</a>
                                        </li><!--end nav-item-->
                                        <li class="breadcrumb-item"><a href="#">CRM</a>
                                        </li><!--end nav-item-->
                                        <li class="breadcrumb-item active">Opportunities</li>
                                    </ol>
                                </div>
                                <h4 class="page-title">Products List </h4>

								
                            </div><!--end page-title-box-->
                        </div><!--end col-->
                    </div>

    <div class="row">
      <div class=" col-md-12 col-lg-12 col-xl-12 col-xxl-12">

				<div class="card">
					<div class="card-body">    
						<!-- Nav tabs -->
	
								<div class="row">
								   <div class="col-12">
								   
								   <button type="button" class="btn btn-danger btn-plr btn-add-brand mb-3" id="btn-add-product" data-bs-toggle="offcanvas" data-bs-target="#new-product"  style="float:right;">Add <i class="fa fa-plus"></i></button>
								   								   
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
                                            <th>Product Name</th>
											<th>Brand</th>
                                            <th>Category</th>
											<th>SKU Code</th>
											<th>Status</th>
											<th>Cost</th>
											<th>Quantity</th>
											<th>Initial Stock</th>
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


<div class="offcanvas offcanvas-end" tabindex="-1" id="edit-product" aria-labelledby="AppearanceLabel">
                    <div class="offcanvas-header border-bottom">
                      <h4 class="m-0 font-18" style="color:#fff;">Edit Product</h4>
                      <button type="button" class="btn-offcanvas-close text-reset p-0 m-0 align-self-center" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body">  
										
	
                    </div><!--end offcanvas-body-->
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
			url:"{{url('view-products')}}",
			data: function (data) 
		    {
               //data.search = $('input[type="search"]').val();
		    },
        },

        columns: [
            {"data": 'DT_RowIndex', name: 'DT_RowIndex', orderable: false, searchable: false  },
			{"data": "name" },
			{"data": "brand" },
			{"data": "category" },
			{"data": "code" },
			{"data": "status" },
			{"data": "cost" },
			{"data": "stock" },
			{"data": "initial_stock" },
			{"data": "user_name" },
			{"data": "action" ,name: 'Action',orderable: false, searchable: false },
        ],
});


$(document).on('click',"#btn-add-product",function()
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


$("#datatable1 tbody").on('click','.edit_product',function()
{
	var id=$(this).attr('id');
	var Result=$("#edit-product .offcanvas-body");
		
		jQuery.ajax({
			type: "GET",
			url: "{{url('edit-product')}}"+"/"+id,
			dataType: 'html',
			//data: {vid: vid},
			success: function(res)
			{
			   Result.html(res);
			}
		});	
});


$("#datatable1 tbody").on('click','.delete_product',function()
{
		
	Swal.fire({
	  //title: "Delete",
	  text: "Are you sure, You want to delete this product?",
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
			url: "{{url('delete-product')}}"+"/"+id,
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

