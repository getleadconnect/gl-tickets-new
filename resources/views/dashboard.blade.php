@extends('layouts.master')
@section('title','Tickets')
@section('contents')

<div class="container-fluid">
                    <!-- Page-Title -->
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="page-title-box">
                                <div class="float-end">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#">Home</a>
                                        </li><!--end nav-item-->
                                        <li class="breadcrumb-item"><a href="#">Dashboard</a>
                                        </li><!--end nav-item-->
                                    </ol>
                                </div>
                                <h4 class="page-title font-25">Dashboard</h4>
                            </div><!--end page-title-box-->
                        </div><!--end col-->
                    </div>
                    <!-- end page title end breadcrumb -->
					
					
					<div class="row">
                        <div class="col-12 col-md-4 col-lg-2"> 
                            <div class="card overflow-hidden">                                
                                <div class="card-body" style="background: #f1c3c3;">
                                    <div class="row align-items-center">
                                        <div class="col">                                                                        
                                            <span class="h4 fw-bold">{{$tk_count[0]->total}}</span>      
                                            <h6 class="text-uppercase text-muted mt-2 m-0 font-11">Tickets</h6>                
                                        </div><!--end col-->
                                        <div class="col-auto">
										<i data-feather="file-text" class="align-self-center text-muted icon-sm"></i>
                                        </div><!--end col-->
                                    </div> <!-- end row -->
                                </div><!--end card-body-->                                                               
                            </div> <!--end card-->                     
                        </div><!--end col-->
                        <div class="col-12 col-md-4 col-lg-2"> 
                            <div class="card overflow-hidden">                                
                                <div class="card-body" style="background: #c7e6f5;">
                                    <div class="row align-items-center">
                                        <div class="col">                                                                        
                                            <span class="h4 fw-bold">{{$tk_count[0]->open}}</span>      
                                            <h6 class="text-uppercase text-muted mt-2 m-0 font-11">Open Tickets </h6>                
                                        </div><!--end col-->
                                        <div class="col-auto position-reletive">
                                            <i data-feather="book-open" class="align-self-center text-muted icon-sm"></i>  
                                        </div><!--end col-->
                                    </div> <!-- end row -->
                                </div><!--end card-body-->                                                               
                            </div> <!--end card-->                     
                        </div><!--end col-->
                        <div class="col-12 col-md-4 col-lg-2"> 
                            <div class="card overflow-hidden">                                
                                <div class="card-body" style="background: #d5f1d5;">
                                    <div class="row align-items-center">
                                        <div class="col">                                                                        
                                            <span class="h4 fw-bold">{{$tk_count[0]->progress}}</span>      
                                            <h6 class="text-uppercase text-muted mt-2 m-0 font-11">In Progress</h6>                
                                        </div><!--end col-->
                                        <div class="col-auto">
                                            <i data-feather="trending-up" class="align-self-center text-muted icon-sm"></i>
                                        </div><!--end col-->
                                    </div> <!-- end row -->
                                </div><!--end card-body-->                                                               
                            </div> <!--end card-->                     
                        </div><!--end col-->
                        <div class="col-12 col-md-4 col-lg-2"> 
                            <div class="card overflow-hidden">                                
                                <div class="card-body" style="background: #efc3ef;">
                                    <div class="row align-items-center">
                                        <div class="col">                                                                        
                                            <span class="h4 fw-bold">{{$tk_count[0]->closed}}</span>      
                                            <h6 class="text-uppercase text-muted mt-2 m-0 font-11">Closed</h6>                
                                        </div><!--end col-->
                                        <div class="col-auto">
                                            <i data-feather="check-square" class="align-self-center text-muted icon-sm"></i>
                                        </div><!--end col-->
                                    </div> <!-- end row -->
                                </div><!--end card-body-->                                                               
                            </div> <!--end card-->                     
                        </div><!--end col-->
                        <div class="col-12 col-md-4 col-lg-2"> 
                            <div class="card overflow-hidden">                                
                                <div class="card-body" style=" background: #9de1e1;">
                                    <div class="row align-items-center">
                                        <div class="col">                                                                        
                                            <span class="h4 fw-bold">{{$overdue}}</span>      
                                            <h6 class="text-uppercase text-muted mt-2 m-0 font-11">Over Dues</h6>                
                                        </div><!--end col-->
                                        <div class="col-auto">
                                            <i data-feather="zap" class="align-self-center text-muted icon-sm"></i>
                                        </div><!--end col-->
                                    </div> <!-- end row -->
                                </div><!--end card-body-->                                                               
                            </div> <!--end card-->                     
                        </div><!--end col-->
                        <div class="col-12 col-md-4 col-lg-2"> 
                            <div class="card overflow-hidden">                                
                                <div class="card-body" style=" background: #ededbe;">
                                    <div class="row align-items-center">
                                        <div class="col">                                                                        
                                            <span class="h4 fw-bold">{{$cust_count}}</span>      
                                            <h6 class="text-uppercase text-muted mt-2 m-0 font-11">Customers</h6>                
                                        </div><!--end col-->
                                        <div class="col-auto">
                                           <i data-feather="users" class="align-self-center text-muted icon-sm"></i>
                                        </div><!--end col-->
                                    </div> <!-- end row -->
                                </div><!--end card-body-->                                                               
                            </div> <!--end card-->                     
                        </div><!--end col-->                    
                    </div>

					<div class="row">
					<div class="col-lg-12 col-xl-8">
					
						<input type="hidden"  id="open-ticket" value="{{$op}}">
						<input type="hidden" id="progress-ticket" value="{{$inp}}">
						<input type="hidden" id="closed-ticket" value="{{$clo}}">
										
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Monthly Tickets</h4>
                            </div><!--end card-header-->
                            <div class="card-body">          
                                <canvas id="bar" height="300" width="1036" style="display: block; box-sizing: border-box; height: 300px; width: 1036px;"></canvas>            
                            </div><!--end card-body-->
                        </div><!--end card-->
                    </div>
					
					<div class="col-lg-12 col-xl-4">
					
					<input type="hidden"  id="doughnut-data" value="{{ $tk_count[0]->open.','.$tk_count[0]->progress.','.$tk_count[0]->closed}}">
					
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Total tickets in status</h4>
                            </div><!--end card-header-->
                            <div class="card-body">            
                                <canvas id="doughnut" height="300" width="493" style="display: block; box-sizing: border-box; height: 300px; width: 493px;"></canvas>            
                            </div><!--end card-body-->
                        </div><!--end card-->
                    </div>
					
					</div>

	
                </div><!-- container -->
				
				<script src="{{url('assets/libs/chart.js/chart.min.js')}}"></script>
				<!--<script src="{{url('assets/js/pages/chartjs.init.js')}}"></script>-->
				
				
@push('scripts')
<script>

// BAR chart

var op=$("#open-ticket").val();
var inp=$("#progress-ticket").val();
var clo=$("#closed-ticket").val();

var op1=op.split(',');
var inp1=inp.split(',');
var clo1=clo.split(',');

ctx2=document.getElementById("bar").getContext("2d"),
myChart=new Chart(ctx2,{type:"bar",data:{labels:["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"],
datasets:[

{label:"Open",
data: op1,
borderRadius:100,borderSkipped:!1,backgroundColor:"#367de4",
borderColor:"#367de4",borderWidth:1,indexAxis:"x",barThickness:15,grouped:!0,maxBarThickness:9,barPercentage:50},

{label:"In progress",
data:inp1,
borderRadius:100,borderSkipped:!1,backgroundColor:"#1ccab8",
borderColor:"#1ccab8",borderWidth:1,indexAxis:"x",barThickness:15,grouped:!0,maxBarThickness:9},

{label:"Closed",
data:clo1,
borderRadius:100,borderSkipped:!1,backgroundColor:"#e1a974",
borderColor:"#e1a974",borderWidth:1,indexAxis:"x",barThickness:15,grouped:!0,maxBarThickness:9}
]},

options:{maintainAspectRatio:!1,responsive:!0,
plugins:{legend:{position:"top",labels:{color:"#7c8ea7"}},
title:{display:!1,text:"Chart.js Bar Chart"}},
scales:{y:{beginAtZero:!0,ticks:{callback:function(r,o,e){return r},color:"#7c8ea7"},
grid:{drawBorder:"border",color:"rgba(132, 145, 183, 0.15)",borderDash:[3],borderColor:"rgba(132, 145, 183, 0.15)"}},
x:{ticks:{color:"#7c8ea7"},grid:{display:!1,color:"rgba(132, 145, 183, 0.09)", borderDash:[3], borderColor:"rgba(132, 145, 183, 0.09)"}}}}});


// DOUGHNUT CHART

var dat=$("#doughnut-data").val();
var dat1=dat.split(',');


ctx3=document.getElementById("doughnut").getContext("2d"),
myChart=new Chart(ctx3,{type:"doughnut",data:{labels:["Open","in Progress","Closed"],

datasets:[{data:dat1,backgroundColor:["#4d79f6","#ff5da0","#4ac7ec"],
cutout:100,radius:100,borderColor:"transparent",borderRadius:0,hoverBackgroundColor:["#4d79f6","#ff5da0","#4ac7ec"]}]},
options:{maintainAspectRatio:!1,plugins:{legend:{labels:{color:"#7c8ea7"}}}}});


</script>


@endpush

@endsection