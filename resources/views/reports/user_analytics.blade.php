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
				<h4 class="page-title">User Analytics Report </h4>

				
			</div><!--end page-title-box-->
		</div><!--end col-->
	</div>
         
		 <!-- end page title end breadcrumb -->
  
    <div class="row">
      <div class=" col-md-12 col-lg-12 col-xl-12 col-xxl-12">

				<div class="card">
					<div class="card-body p-0">    

						<div class="tab-pane p-3 active" id="tab_users" role="tabpanel">
						
								<div class="row">                    
									<div class="export-buttons col-md-12 col-lg-12 text-end">
									
									</div><!--end col-->
								</div><!--end row-->
						
						
								<div class="row mt-3">
									<div class=" col-12 col-lg-12">

										<table id="datatable1" class="table align-middle" style="width:100% !important;">
                                        <thead class="thead-light">
										
                                          <tr>
											<th>#</th>
                                            <th>Agent Name</th>
                                            <th>Total Tickets</th>
                                            <th>Opened</th>
                                            <th>In Progress</th>
                                            <th>Closed</th>
                                          </tr>
                                        </thead>
                                        <tbody>
                                                                                             
                                        </tbody>
                                      </table>
							
									
									</div><!--end col-->

								</div><!--end row-->  
						</div>        
					</div> <!--end card-body-->                            
				</div><!--end card-->
						

						
		</div><!--end col-->
	</div><!--end row-->
</div>			
	<!---  DETAILS MODAL ------------------------------------------------------------>			


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
			url:"{{url('view-ticket-counts')}}",
			data: function (data) 
		    {
               //data.search = $('input[type="search"]').val();
		    },
        },

        columns: [
            {"data": 'DT_RowIndex', name: 'DT_RowIndex', orderable: false, searchable: false  },
			{"data": "name" },
			{"data": "total" },
			{"data": "open" },
			{"data": "progress" },
			{"data": "closed" },
        ],
});


</script>
@endpush
@endsection

