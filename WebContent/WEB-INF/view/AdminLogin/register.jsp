<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="UserResources/images/favicon.png">
    <title>Register Here!!</title>
    <!-- Bootstrap Core CSS -->
    <link href="UserResources/css/bootstrap.min.css" rel="stylesheet">
    <!-- page css -->
    <link href="UserResources/css/login-register-lock.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="UserResources/css/style.css" rel="stylesheet">
    
    <!-- You can change the theme colors from here -->
    <link href="UserResources/css/default-dark.css" id="theme" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body>
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <div class="loader">
            <div class="loader__figure"></div>
            <p class="loader__label">Factory Intelligence</p>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="c"%>
    <section id="wrapper" style="background-image:url(UserResources/images/login-register.jpg);">
        <div class="login-box card">
            <div class="card-body">
                <c:form class="form-horizontal form-material" action="registerUser.html" method="post" modelAttribute="registerVO" enctype="multipart/form-data">
                    <a href="login.html" class="text-center db"><img src="UserResources/images/logo-icon.png" alt="Home" /><br/><img src="UserResources/images/logo-text.png" alt="Home" /></a>
                    <h3 class="box-title m-t-40 m-b-0">Register Now</h3><small>Create your account and enjoy</small>
                    <div class="form-group m-t-20">
                        <div class="col-xs-12">
                            <c:input class="form-control" placeholder="Enter FirstName" path="firstName"/>
                        </div>
                    </div>
                    <div class="form-group m-t-20">
                        <div class="col-xs-12">
                            <c:input class="form-control" type="text" placeholder="Enter LastName" path="lastName"/>
                        </div>
                    </div>
                    <div class="form-group m-t-20">
                        <div class="col-xs-12">
                            <c:input class="form-control" type="text" placeholder="Enter UserName" path="loginVO.userName"/>
                        </div>
                    </div>
                    <div class="form-group ">
                        <div class="col-xs-12">
                            <c:input class="form-control" type="password" placeholder="Enter Password" path="loginVO.passWord" />
                        </div>
                    </div>
                    <div class="form-group ">
                        <div class="col-xs-12">
                            <c:input class="form-control" type="text" placeholder="Enter Email" path="Email"/> 
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12">
                            <c:input class="form-control" type="text" maxlength="10" placeholder="Enter Mobile Number" path="mobileNumber" />
                        </div>
                    </div>
                    <div class="form-group ">
                        <div class="col-xs-12">
					<c:textarea class="form-control" type="text" placeholder="Enter Address" path="Address"/>
                        </div>
                    </div>
                    Upload Profile Pic
                    <div class="form-group ">
                        <div class="col-xs-12">
                        <input class="form-control" name="uploadfile" type="file" />
                        </div>
                    </div>
                    <div class="form-group ">
                        <div class="col-xs-12">
                   		 	<c:label path = "Gender">Gender</c:label>
                  			<c:radiobutton path="Gender" value = "Male" label = "Male" />
                  			<c:radiobutton path="Gender" value = "Female" label = "Female" />
						</div>
					</div>

                    <div class="form-group text-center m-t-20">
                        <div class="col-xs-12">
                            <button class="btn btn-info btn-lg btn-block text-uppercase waves-effect waves-light" type="submit">Sign Up</button>
                        </div>
                    </div>
                    <div class="form-group m-b-0">
                        <div class="col-sm-12 text-center">
                            <p>Already have an account? <a href="login.html" class="text-info m-l-5"><b>Sign In</b></a></p>
                        </div>
                    </div>
                </c:form>
            </div>
        </div>
    </section>
    
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="UserResources/js/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="UserResources/js/popper.min.js"></script>
    <script src="UserResources/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(function() {
            $(".preloader").fadeOut();
        });
        $(function() {
            $('[data-toggle="tooltip"]').tooltip()
        });
        // ============================================================== 
        // Login and Recover Password 
        // ============================================================== 
        $('#to-recover').on("click", function() {
            $("#loginform").slideUp();
            $("#recoverform").fadeIn();
        });
    </script>
</body>

</html>