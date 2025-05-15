<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8" />
            <title>GL-Tickets</title>
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
            <meta content="" name="author" />
            <meta http-equiv="X-UA-Compatible" content="IE=edge" />

            <!-- App favicon -->
            <link rel="shortcut icon" href="assets/images/favicon.ico">
       
     <!-- App css -->
     <link href="{{url('assets/css/bootstrap.min.css')}}" rel="stylesheet" type="text/css" />
     <link href="{{url('assets/css/icons.min.css')}}" rel="stylesheet" type="text/css" />
     <link href="{{url('assets/css/app.min.css')}}" rel="stylesheet" type="text/css" />
</head>

<body id="body" class="auth-page" style="background-image: url('assets/images/p-1.png'); background-size: cover; background-position: center center;">
   <!-- Log In page -->
    <div class="container-md">
        <div class="row vh-100 d-flex justify-content-center">
            <div class="col-12 align-self-center">
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-4 mx-auto">
                            <div class="card" style="box-shadow: 1px 1px 1px 2px lightblue; padding:10px;">
                                <div class="card-body p-3 ">
                                    <div class="text-center p-3">
                                        <a href="index.html" class="logo logo-admin">
                                            <img src="{{url('images/gl-logo.svg')}}" height="50" alt="logo" class="auth-logo">
                                        </a>
                                        <h4 class="mt-3 mb-1 fw-semibold  font-18">Let's Get Gl-Tickets</h4>   
                                        <p class="text-muted  mb-0">Sign in to continue..</p>  
                                    </div>
                                </div>
                                <div class="card-body pt-0 mb-5" style="padding:25px;">                                    
                                    <form class="form" method="post"  action="{{route('user-login')}}"  name="loginForm">
									@csrf									
                                        <div class="form-group mt-3 mb-2">
                                            <label class="form-label" for="username">Email</label>
                                            <input type="email" class="form-control" id="email" name="email" placeholder="Enter email">                               
                                        </div><!--end form-group--> 
            
                                        <div class="form-group">
                                            <label class="form-label" for="userpassword">Password</label>                                            
                                            <input type="password" class="form-control" name="password" id="userpassword" placeholder="Enter password">                            
                                        </div><!--end form-group--> 
            
                                        <div class="form-group row mt-3">
                                            <div class="col-sm-12 text-end">
                                                <!--<a href="auth-recover-pw.html" class="text-muted font-13"><i class="dripicons-lock"></i> Forgot password?</a>  -->
                                            </div><!--end col--> 
                                        </div><!--end form-group--> 
            
                                        <div class="form-group mb-0 row">
                                            <div class="col-12">
                                                <div class="d-grid mt-3">
                                                    <button class="btn btn-primary" type="submit" style="line-height:30px;">Log In <i class="fas fa-sign-in-alt ms-1"></i></button>
                                                </div>
                                            </div><!--end col--> 
                                        </div> <!--end form-group-->                           
                                    </form><!--end form-->

                                </div><!--end card-body-->
                            </div><!--end card-->
                        </div><!--end col-->
                    </div><!--end row-->
                </div><!--end card-body-->
            </div><!--end col-->
        </div><!--end row-->
    </div><!--end container-->
    <!-- vendor js -->
    
    <script src="{{url('assets/libs/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
    <script src="{{url('assets/libs/simplebar/simplebar.min.js')}}"></script>
    <script src="{{url('assets/libs/feather-icons/feather.min.js')}}"></script>
    <!-- App js -->
    <script src="{{url('assets/js/app.js')}}"></script>
    
</body>

</html>