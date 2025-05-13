@extends('layouts.master')
@section('title','Tickets')
@section('contents')
<style>

.badge {
    --bs-badge-font-size: .95em !important;
	--bs-badge-padding-y: 0.4em !important;
}

.badge.badge-ticket-count {
    background-color:rgba(11, 81, 183,.08) !important;
    border: 1px solid rgba(11, 81, 183,.08) !important;
	color:#4872af !important;
}

.btn-add-ticket {  display: none;}

.list-cust:hover .btn-cust-add-ticket {  display: block;}

.list-group-item{	height:50px !important;}

.cust-color>h5{	color:#527af1 !important;}

h5:hover{	background-color:#d6e7ff !important;}

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
				<h4 class="page-title">Customers </h4>

				
			</div><!--end page-title-box-->
		</div><!--end col-->
	</div>
	<!-- end page title end breadcrumb -->

    <div class="row">
      <div class=" col-md-12 col-lg-12 col-xl-12 col-xxl-12">

				<div class="card">
					<div class="card-body">    

					@foreach($cust as $key=>$row)

					<div class="list-group custom-list-group mb-2 list-cust">
						<div class="list-group-item align-items-center d-flex justify-content-between">
							<div class="media">
									<a href="{{url('customer-details').'/'.$row->id}}" id="customer_dt" class="cust-color" ><h5 class="m-0" style="min-width:200px;padding:5px;"> {{$row->name}}</h5></a>
									<h6 class="m-0" style="padding:5px;">+{{$row->country_code.$row->contact}}&nbsp;|&nbsp;{{$row->email}}</h6>
									<span class="badge rounded-pill badge-ticket-count" style="margin-left:50px;margin-top:5px;">{{$row->ticket_count}} Tickets</span>
							</div>
							
							<div class="align-self-center">
								<a href="javascript:;" class="btn btn-sm btn-soft-primary btn-cust-add-ticket hide" data-choice="customer"  id="{{$row->id}}" data-bs-toggle="offcanvas" data-bs-target="#customer-new-ticket">Add Ticket <i class="las la-plus font-15"></i></a>  
							</div>                                            
						</div>
					</div>					
					@endforeach				
                   
					<div class="mt-3 mb-5 d-flex"  style="width:100%;justify-content: center;align-items:center;font-size:1rem !impotant;">
					{!! $cust->links('pagination::bootstrap-4') !!}
					</div>				   

					</div> <!--end card-body-->                            
				</div><!--end card-->
	
		</div><!--end col-->
	</div><!--end row-->
</div>

			<div class="offcanvas offcanvas-end" tabindex="-1" id="customer-new-ticket" aria-labelledby="AppearanceLabel">
                    <div class="offcanvas-header border-bottom" >
                      <h4 class="m-0 font-18" style="color:#fff;" >Create New Tickets</h4>
                      <button type="button" class="btn-offcanvas-close text-reset p-0 m-0 align-self-center close_btn" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body" style="overflow-x:scroll;height:95%;">  

	
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

$(document).on('click','.btn-cust-add-ticket',function()
{
	var cid=$(this).attr('id');
	var Result=$("#customer-new-ticket .offcanvas-body");

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

