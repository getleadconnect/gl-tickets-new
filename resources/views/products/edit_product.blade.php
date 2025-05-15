<form id="updateProduct" >
@csrf
	<input type="hidden" id="product_id" name="product_id" value="{{$pro->id}}">

	<div class="mb-3">
		<label for="product_name">Product Name</label>
		<input type="text" class="form-control" id="product_name" name="product_name" placeholder="Product Name" value="{{$pro->name}}" required>
	</div>
	<div class="mb-3">
		<label for="price">Price</label>
		<input type="number" class="form-control" id="price" name="price" placeholder="Price" value="{{$pro->cost}}" required>
	</div>
								
	<div class="mb-3">
		<label for="brand">Brand</label>
		<select class="form-select" id="brand_id" name="brand_id" required>
		<option value="" selected disabled> select </option>
		@foreach($brand as $key=>$r)
			<option value="{{$r->id}}" @if($r->id==$pro->brand_id) selected @endif>{{$r->brand}}</option>
		@endforeach
		</select>
	</div>
				
	<div class="mb-3">
		<label for="category">Category</label>
		<select class="form-select" id="category_id" name="category_id" required>
		<option value="" selected disabled>select</option>
		@foreach($cats as $key=>$r)
			<option value="{{$r->id}}" @if($r->id==$pro->category_id) selected @endif>{{$r->category}}</option>
		@endforeach
		</select>
	</div>
	
	<div class="mb-3">
		<label for="sku_code">SKU Code</label>
		<input type="text" class="form-control" id="sku_code" name="sku_code" placeholder="SKU Code" value="{{$pro->code}}">
	</div>

	<div class="mb-3">
		<label for="number_of_items">Number Of Items</label>
		<input type="number" class="form-control" id="no_of_items" name="no_of_items" placeholder="No of items" value="{{$pro->stock}}" required>
	</div>

	<div class="row">
		<div class="col-12 text-right" style="text-align:right;">
			<button type="submit" class="btn btn-primary btn-pad"> Update </button>
			<button type="button" class="btn btn-danger btn-pad" data-bs-dismiss="offcanvas" >Cancel</button>
		</div>
	</div>
</form>                                       
<script>

$(document).on('change','#brand_id',function()
{
	var bid=$(this).val();
	
			jQuery.ajax({
			type: "GET",
			url: "{{url('get-categories')}}"+"/"+bid,
			dataType: 'html',
			//data: {vid: vid},
			success: function(res)
			{
			   $("#category_id").html(res);
			}
		});
	
});


var up_validate=$('#updateProduct').validate({ 
	
		rules: {
            product_name: {required: true,},
			price: {required: true,},
			brand_id: {required: true,},
			category: {required: true,},
			sku_code: {required: true,},
			no_of_items: {required: true,},
           },

	submitHandler: function(form) 
	{
		$.ajax({
		url: "{{route('update-product')}}",
		method: 'post',
		data: $('#updateProduct').serialize(),
		dataType:'json',
		
		success: function(result){
			if(result.status == 1)
			{
				toastr.success(result.msg);
				$("#updateProduct")[0].reset();
				$("#edit-product").offcanvas('hide');
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




</script>


