<style>
.mr-2
{
	margin-right:10px;
}
.font-25
{
	font-size:25px !important;
}

</style>
<div class="leftbar-tab-menu">
            <div class="main-icon-menu" style="background:#433653 !important;">
                <a href="index.html" class="logo logo-metrica d-block text-center">
                    <span>
                        <img src="{{url('images/gl-logo.svg')}}" alt="logo-small" class="logo-sm">
                    </span>
                </a>
                <div class="main-icon-menu-body">
                    <div class="position-reletive h-100" data-simplebar style="overflow-x: hidden;">
                        <ul class="nav nav-tabs" role="tablist" id="tab-menu">
							
                            <li class="nav-item iconDash" data-bs-toggle="tooltip" data-bs-placement="right" title="Dashboard" data-bs-trigger="hover">
                                <a href="#MetricaDashboard" id="dashboard-tab" class="nav-link">
                                    <i class="fas fa-home font-25 menu-icon"></i>
                                </a><!--end nav-link-->
                            </li><!--end nav-item-->
							
							<li class="nav-item menuIcon" data-bs-toggle="tooltip" data-bs-placement="right" title="Tickets" data-bs-trigger="hover">
                                <a href="#MetricaTickets" id="dashboard-tab" class="nav-link">
                                    <i class="far fa-newspaper font-25 menu-icon"></i>
                                </a><!--end nav-link-->
                            </li><!--end nav-item-->

                            <li class="nav-item menuIcon" data-bs-toggle="tooltip" data-bs-placement="right" title="Customers" data-bs-trigger="hover">
                                <a href="#MetricaPages" id="pages-tab" class="nav-link">
                                    <i class="fas fa-user-friends font-25 menu-icon"></i>
                                </a><!--end nav-link-->
                            </li><!--end nav-item-->
							
							<li class="nav-item menuIcon" data-bs-toggle="tooltip" data-bs-placement="right" title="Invoices" data-bs-trigger="hover">
                                <a href="#MenuInvoice" id="invoice-tab" class="nav-link">
                                    <i class="fas fa-donate font-25 menu-icon"></i>
                                </a><!--end nav-link-->
                            </li><!--end nav-item-->
							
							<li class="nav-item menuIcon" data-bs-toggle="tooltip" data-bs-placement="right" title="Products" data-bs-trigger="hover">
                                <a href="#MenuProduct" id="invoice-tab" class="nav-link">
                                    <i class="fas fa-box-open font-25 menu-icon"></i>
                                </a><!--end nav-link-->
                            </li><!--end nav-item-->

							<li class="nav-item menuIcon" data-bs-toggle="tooltip" data-bs-placement="right" title="Reports" data-bs-trigger="hover">
                                <a href="#MenuReport" id="report-tab" class="nav-link">
                                    <i class="fas fa-file-alt font-25 menu-icon"></i>
                                </a><!--end nav-link-->
                            </li><!--end nav-item-->
							
							<li class="nav-item menuIcon" data-bs-toggle="tooltip" data-bs-placement="right" title="Settings" data-bs-trigger="hover">
                                <a href="#MenuSettings" id="settings-tab" class="nav-link">
                                    <i class="fas fa-cogs font-25 menu-icon"></i>
                                </a><!--end nav-link-->
                            </li><!--end nav-item-->
							
                        </ul><!--end nav-->
                    </div><!--end /div-->
                </div><!--end main-icon-menu-body-->
                <div class="pro-metrica-end">
                    <a href="" class="profile">
                        <img src="{{url('assets/images/users/user-4.jpg')}}" alt="profile-user" class="rounded-circle thumb-sm">
                    </a>
                </div><!--end pro-metrica-end-->
            </div>
            <!--end main-icon-menu-->

            <div class="main-menu-inner">
                <!-- LOGO -->
                <div class="topbar-left">
                    <a href="index.html" class="logo">
                        <span>
                            <img src="{{url('images/logo-dark.png')}}" alt="logo-large" class="logo-lg logo-dark" style="height:25px;">
                            <img src="{{url('images/logo-dark.png')}}" alt="logo-large" class="logo-lg logo-light" style="height:25px;">
                        </span>
                    </a><!--end logo-->
                </div><!--end topbar-left-->
                <!--end logo-->
				
                <div class="menu-body navbar-vertical tab-content" data-simplebar>

					<div id="MetricaDashboard" class="main-icon-menu-pane tab-pane show" role="tabpanel"
                        aria-labelledby="dasboard-tab">
                        <div class="title-box">
                            <h6 class="menu-title">Home</h6>
                        </div>

                        <ul class="nav flex-column mb-3 ">
						
							<li class="nav-item">
                                <a class="nav-link" href="{{route('dashboard')}}"><i class="fas fa-caret-right mr-2"></i>Dashboard</a>
                            </li><!--end nav-item-->

                        </ul><!--end nav-->
                    </div><!-- end Dashboards -->
					
					
					<div id="MetricaTickets" class="main-icon-menu-pane tab-pane" role="tabpanel"
                        aria-labelledby="dasboard-tab">
                        <div class="title-box">
                            <h6 class="menu-title">Tickets</h6>
                        </div>

                        <ul class="nav flex-column mb-3 ">
                            <li class="nav-item">
                                <a class="nav-link" href="{{route('list-tickets')}}"><i class="fas fa-caret-right mr-2"></i>List Tickets</a>
                            </li><!--end nav-item-->
                            <li class="nav-item">
                                <a class="nav-link" href="{{route('closed-tickets')}}"><i class="fas fa-caret-right mr-2"></i>Closed Tickets</a>
                            </li><!--end nav-item-->
							
							<li class="nav-item">
                                <a class="nav-link" href="{{route('deleted-tickets')}}"><i class="fas fa-caret-right mr-2"></i>Deleted Tickets</a>
                            </li><!--end nav-item-->
                        </ul><!--end nav-->
                    </div><!-- end Dashboards -->


                    <div id="MetricaPages" class="main-icon-menu-pane tab-pane" role="tabpanel" aria-labelledby="pages-tab">
                        <div class="title-box">
                            <h6 class="menu-title">Customers</h6>
                        </div>
                        <ul class="nav flex-column mb-3">
                            <li class="nav-item">
                                <a class="nav-link" href="{{route('list-customers')}}"><i class="fas fa-caret-right mr-2"></i>Customers List</a>
                            </li><!--end nav-item-->
                        </ul><!--end nav-->
                    </div><!-- end Pages -->
					
					<div id="MenuInvoice" class="main-icon-menu-pane tab-pane" role="tabpanel" aria-labelledby="invoice-tab">
                        <div class="title-box">
                            <h6 class="menu-title">Invoices</h6>
                        </div>
                        <ul class="nav flex-column mb-3">
                            <li class="nav-item">
                                <a class="nav-link" href="{{route('list-invoice')}}"><i class="fas fa-caret-right mr-2"></i>Invoice List</a>
                            </li><!--end nav-item-->
							<li class="nav-item">
                                <a class="nav-link" href="{{route('payments')}}"><i class="fas fa-caret-right mr-2"></i>Payments</a>
                            </li><!--end nav-item-->
                        </ul><!--end nav-->
                    </div><!-- end Pages -->
					
					<div id="MenuProduct" class="main-icon-menu-pane tab-pane" role="tabpanel" aria-labelledby="invoice-tab">
                        <div class="title-box">
                            <h6 class="menu-title">Products</h6>
                        </div>
                        <ul class="nav flex-column mb-3">
                            <li class="nav-item">
                                <a class="nav-link" href="{{route('list-products')}}"><i class="fas fa-caret-right mr-2"></i>list Products</a>
                            </li><!--end nav-item-->
							
                        </ul><!--end nav-->
                    </div><!-- end Pages -->
					
					<div id="MenuReport" class="main-icon-menu-pane tab-pane" role="tabpanel" aria-labelledby="report-tab">

						<div class="title-box">
                            <h6 class="menu-title">Reports</h6>
                        </div>
                        <ul class="nav flex-column mb-3">
                            <li class="nav-item">
                                <a class="nav-link" href="{{route('user-analytics')}}"><i class="fas fa-caret-right mr-2"></i>User Analytics</a>
                            </li><!--end nav-item-->
							
							<li class="nav-item">
                                <a class="nav-link" href="{{route('all-tickets')}}"><i class="fas fa-caret-right mr-2"></i>All Tickets</a>
                            </li><!--end nav-item-->
							
                            <li class="nav-item">
                                <a class="nav-link" href="{{route('agent-wise-report')}}"><i class="fas fa-caret-right mr-2"></i>Agent Tickets</a>
                            </li><!--end nav-item-->
							 <li class="nav-item">
                                <a class="nav-link" href="{{route('ticket-status-report')}}"><i class="fas fa-caret-right mr-2"></i>Ticket Status</a>
                            </li><!--end nav-item-->
							
							<li class="nav-item">
                                <a class="nav-link" href="{{route('customer-tickets')}}"><i class="fas fa-caret-right mr-2"></i>Customer Tickets</a>
                            </li><!--end nav-item-->
							
							<li class="nav-item">
                                <a class="nav-link" href="{{route('payment-report')}}"><i class="fas fa-caret-right mr-2"></i>Payments</a>
                            </li><!--end nav-item-->
							
							
							

                        </ul><!--end nav-->

                    </div><!-- end Authentication-->
				

                    <div id="MenuSettings" class="main-icon-menu-pane tab-pane" role="tabpanel" aria-labelledby="settings-tab">
                        <div class="title-box">
                            <h6 class="menu-title">Account Settings</h6>
                        </div>
                        <ul class="nav flex-column mb-3">
                            <li class="nav-item">
                                <a class="nav-link" href="{{route('profile')}}"><i class="fas fa-caret-right mr-2"></i>Profile</a>
                            </li><!--end nav-item-->
                            <li class="nav-item">
                                <a class="nav-link" href="{{route('list-users')}}"><i class="fas fa-caret-right mr-2"></i>Users, Departments, Branches ..</a>
                            </li><!--end nav-item-->
							
							
                        </ul><!--end nav-->
						
						
						<div class="title-box">
                            <h6 class="menu-title">Ticket Settings</h6>
                        </div>
                        <ul class="nav flex-column mb-3">
                            <li class="nav-item">
                                <a class="nav-link" href="{{route('ticket-labels')}}"><i class="fas fa-caret-right mr-2"></i>Ticket Labels</a>
                            </li><!--end nav-item-->
                            <li class="nav-item">
                                <a class="nav-link" href="{{route('ticket-status')}}"><i class="fas fa-caret-right mr-2"></i>Ticket Status</a>
                            </li><!--end nav-item-->
							 <li class="nav-item">
                                <a class="nav-link" href="{{route('additional-fields')}}"><i class="fas fa-caret-right mr-2"></i>Additional Fields</a>
                            </li><!--end nav-item-->
							
                        </ul><!--end nav-->
						
						<div class="title-box">
                            <h6 class="menu-title">Product Settings</h6>
                        </div>
                        <ul class="nav flex-column mb-3">
                            <li class="nav-item">
                                <a class="nav-link" href="{{route('brands')}}"><i class="fas fa-caret-right mr-2"></i>Brands & Catgories</a>
                            </li><!--end nav-item-->
							
                        </ul><!--end nav-->

                    </div><!-- end Authentication-->
										
					
					
					
                </div>
                <!--end menu-body-->
            </div><!-- end main-menu-inner-->
        </div>




