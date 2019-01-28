<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1,shrink-to-fit=no">
    <link rel="icon" type="image/png" sizes="16x16" href="AdminResources/images/favicon.png">
    <link rel="stylesheet" href="AdminResources/css/pace.css">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Manage DataSet</title>
    <!-- CSS -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600|Roboto:400" rel="stylesheet" type="text/css">
    <link href="AdminResources/css/material-icons.css" rel="stylesheet" type="text/css">
    <link href="AdminResources/css/monosocialiconsfont.css" rel="stylesheet" type="text/css">
    <link href="AdminResources/css/feather.css" rel="stylesheet" type="text/css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery.perfect-scrollbar/0.7.0/css/perfect-scrollbar.min.css" rel="stylesheet" type="text/css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery-footable/3.1.4/footable.bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.15/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css">
    <link href="AdminResources/css/style.css" rel="stylesheet" type="text/css">
    <!-- Head Libs -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>
    <script data-pace-options='{ "ajax": false, "selectors": [ "img" ]}' src="https://cdnjs.cloudflare.com/ajax/libs/pace/1.0.2/pace.min.js"></script>
</head>

<body class="header-dark sidebar-light sidebar-expand">
    <div id="wrapper" class="wrapper">
        <!-- HEADER & TOP NAVIGATION -->
        <nav class="navbar">
            <!-- Logo Area -->
            <div class="navbar-header">
                <a href="index.html" class="navbar-brand">
                    <img class="logo-expand" alt="" src="AdminResources/images/logo-expand.png">
                    <img class="logo-collapse" alt="" src="AdminResources/images/logo-collapse.png">
                    <!-- <p>BonVue</p> -->
                </a>
            </div>
            <!-- /.navbar-header -->
            <!-- Left Menu & Sidebar Toggle -->
            <ul class="nav navbar-nav">
                <li class="sidebar-toggle"><a href="javascript:void(0)" class="ripple"><i class="feather feather-menu list-icon fs-20"></i></a>
                </li>
            </ul>
            <!-- /.navbar-left -->
            <!-- Search Form -->
            <form class="navbar-search d-none d-sm-block" role="search"><i class="feather feather-search list-icon"></i> 
                <input type="search" class="search-query" placeholder="Search anything..."> <a href="javascript:void(0);" class="remove-focus"><i class="feather feather-x"></i></a>
            </form>
            <!-- /.navbar-search -->
            <div class="spacer"></div>
            <!-- Button: Create New -->
            <div class="btn-list dropdown d-none d-md-flex mr-4 mr-0-rtl ml-4-rtl"><a href="javascript:void(0);" class="btn btn-primary dropdown-toggle ripple" data-toggle="dropdown"><i class="feather feather-plus list-icon"></i> Create New</a>
                <div class="dropdown-menu dropdown-left animated flipInY"><span class="dropdown-header">Create new ...</span>  <a class="dropdown-item" href="#">Projects</a>  <a class="dropdown-item" href="#">User Profile</a>  <a class="dropdown-item" href="#"><span class="d-flex align-items-end"><span class="flex-1">To-do Item</span> <span class="badge badge-pill bg-primary-contrast">7</span> </span></a>
                    <a
                    class="dropdown-item" href="#"><span class="d-flex align-items-end"><span class="flex-1">Mail</span>  <span class="badge badge-pill bg-color-scheme-contrast">23</span></span>
                        </a>
                        <div class="dropdown-divider"></div><a class="dropdown-item" href="#"><span class="d-flex align-items-center"><span class="flex-1">Settings</span> <i class="feather feather-settings list-icon icon-muted"></i></span></a>
                </div>
            </div>
            <!-- /.btn-list -->
            <!-- User Image with Dropdown -->
            <ul class="nav navbar-nav">
                <li class="dropdown"><a href="javascript:void(0);" class="dropdown-toggle ripple" data-toggle="dropdown"><span class="avatar thumb-xs2"><img src="AdminResources/images/user1.jpg" class="rounded-circle" alt=""> <i class="feather feather-chevron-down list-icon"></i></span></a>
                    <div
                    class="dropdown-menu dropdown-left dropdown-card dropdown-card-profile animated flipInY">
                        <div class="card">
                            <header class="card-header d-flex mb-0"><a href="javascript:void(0);" class="col-md-4 text-center"><i class="feather feather-user-plus align-middle"></i> </a><a href="javascript:void(0);" class="col-md-4 text-center"><i class="feather feather-settings align-middle"></i> </a>
                                <a
                                href="javascript:void(0);" class="col-md-4 text-center"><i class="feather feather-power align-middle"></i>
                                    </a>
                            </header>
                            <ul class="list-unstyled card-body">
                                <li><a href="#"><span><span class="align-middle">Manage Accounts</span></span></a>
                                </li>
                                <li><a href="#"><span><span class="align-middle">Change Password</span></span></a>
                                </li>
                                <li><a href="#"><span><span class="align-middle">Check Inbox</span></span></a>
                                </li>
                                <li><a href="#"><span><span class="align-middle">Sign Out</span></span></a>
                                </li>
                            </ul>
                        </div>
    </div>
    </li>
    </ul>
    <!-- /.navbar-right -->
    <!-- Right Menu -->
    <ul class="nav navbar-nav d-none d-lg-flex ml-2 ml-0-rtl">
        <li class="dropdown"><a href="javascript:void(0);" class="dropdown-toggle ripple" data-toggle="dropdown"><i class="feather feather-hash list-icon"></i></a>
            <div class="dropdown-menu dropdown-left dropdown-card animated flipInY">
                <div class="card">
                    <header class="card-header d-flex align-items-center mb-0"><a href="javascript:void(0);"><i class="feather feather-bell color-color-scheme" aria-hidden="true"></i></a>  <span class="heading-font-family flex-1 text-center fw-400">Notifications</span>  <a href="javascript:void(0);"><i class="feather feather-settings color-content"></i></a>
                    </header>
                    <ul class="card-body list-unstyled dropdown-list-group">
                        <li><a href="#" class="media"><span class="d-flex thumb-xs"><img src="AdminResources/images/user3.jpg" class="rounded-circle" alt=""> </span><span class="media-body"><span class="heading-font-family media-heading">Dany Miles </span><span class="media-content">commented on your photo</span> <span class="user--online float-right my-auto"></span></span></a>
                        </li>
                        <li><a href="#" class="media"><span class="d-flex thumb-xs"><img src="AdminResources/images/user6.jpg" class="rounded-circle" alt=""> </span><span class="media-body"><span class="heading-font-family media-heading">Emily Woodworth </span><span class="media-content">posted a photo on your wall.</span></span></a>
                        </li>
                        <li><a href="#" class="media"><span class="d-flex thumb-xs"><img src="AdminResources/images/user2.jpg" class="rounded-circle" alt=""> </span><span class="media-body"><span class="heading-font-family media-heading">Palmer Kate </span><span class="media-content">just mentioned you in his post</span></span></a>
                        </li>
                    </ul>
                    <!-- /.dropdown-list-group -->
                    <footer class="card-footer text-center"><a href="javascript:void(0);" class="heading-font-family text-uppercase fs-13">See all activity</a>
                    </footer>
                </div>
                <!-- /.card -->
            </div>
            <!-- /.dropdown-menu -->
        </li>
        <!-- /.dropdown -->
        <li class="dropdown"><a href="#" class="dropdown-toggle ripple" data-toggle="dropdown"><i class="feather feather-settings list-icon"></i></a>
            <div class="dropdown-menu dropdown-left dropdown-card animated flipInY">
                <div class="card">
                    <header class="card-header d-flex justify-content-between mb-0"><a href="javascript:void(0);"><i class="feather feather-bell color-color-scheme" aria-hidden="true"></i></a>  <span class="heading-font-family flex-1 text-center fw-400">Notifications</span>  <a href="javascript:void(0);"><i class="feather feather-settings color-content"></i></a>
                    </header>
                    <ul class="card-body list-unstyled dropdown-list-group">
                        <li><a href="#" class="media"><span class="d-flex"><i class="material-icons list-icon">check</i> </span><span class="media-body"><span class="heading-font-family media-heading">Invitation accepted</span> <span class="media-content">Your have been Invited ...</span></span></a>
                        </li>
                        <li><a href="#" class="media"><span class="d-flex thumb-xs"><img src="AdminResources/images/user3.jpg" class="rounded-circle" alt=""> </span><span class="media-body"><span class="heading-font-family media-heading">Steve Smith</span> <span class="media-content">I slowly updated projects</span> <span class="user--online float-right"></span></span></a>
                        </li>
                        <li><a href="#" class="media"><span class="d-flex"><i class="material-icons list-icon">event_available</i> </span><span class="media-body"><span class="-heading-font-family media-heading">To Do</span> <span class="media-content">Meeting with Nathan on Friday 8 AM ...</span></span></a>
                        </li>
                    </ul>
                    <!-- /.dropdown-list-group -->
                    <footer class="card-footer text-center"><a href="javascript:void(0);" class="headings-font-family text-uppercase fs-13">See all activity</a>
                    </footer>
                </div>
                <!-- /.card -->
            </div>
            <!-- /.dropdown-menu -->
        </li>
        <!-- /.dropdown -->
        <li><a href="javascript:void(0);" class="right-sidebar-toggle active ripple ml-3 ml-0-rtl"><i class="feather feather-grid list-icon"></i></a>
        </li>
    </ul>
    <!-- /.navbar-right -->
    </nav>
    <!-- /.navbar -->
    <div class="content-wrapper">
        <!-- SIDEBAR -->
        <aside class="site-sidebar scrollbar-enabled" data-suppress-scroll-x="true">
            <!-- User Details -->
            <div class="side-user">
                <div class="col-sm-12 text-center p-0 clearfix">
                    <div class="d-inline-block pos-relative mr-b-10">
                        <figure class="thumb-sm mr-b-0 user--online">
                            <img src="AdminResources/images/user1.jpg" class="rounded-circle" alt="">
                        </figure><a href="page-profile.html" class="text-muted side-user-link"><i class="feather feather-settings list-icon"></i></a>
                    </div>
                    <!-- /.d-inline-block -->
                    <div class="lh-14 mr-t-5"><a href="page-profile.html" class="hide-menu mt-3 mb-0 side-user-heading fw-500">Scott Adams</a>
                        <br><small class="hide-menu">Developer</small>
                    </div>
                </div>
                <!-- /.col-sm-12 -->
            </div>
            <!-- /.side-user -->
            <!-- Sidebar Menu -->
            <nav class="sidebar-nav">
                <ul class="nav in side-menu">
                    <li class="current-page menu-item-has-children"><a href="javascript:void(0);"><i class="list-icon feather feather-command"></i> <span class="hide-menu">Home</span></a>
                    </li>
                    <li class="menu-item-has-children active"><a href="javascript:void(0);"><i class="list-icon feather feather-briefcase"></i> <span class="hide-menu">Manage Post</span></a>
                        <ul class="list-unstyled sub-menu">
                            <li><a href="addPost.html">Add Post</a>
                            </li>
                            <li><a href="viewPost.html">View Post</a>
                            </li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children"><a href="javascript:void(0);"><i class="list-icon feather feather-user"></i> <span class="hide-menu">Manage Cases</span></a>
                        <ul class="list-unstyled sub-menu">
                            <li><a href="addCase.html">Add Case</a>
                            </li>
                            <li><a href="viewCase.html">View Case</a>
                            </li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children"><a href="javascript:void(0);"><i class="list-icon feather feather-feather"></i> <span class="hide-menu">Manage DataSets</span></a>
                        <ul class="list-unstyled sub-menu">
                            <li><a href="addDataSet.html">Add DataSet</a>
                            </li>
                            <li><a href="viewDataSet.html">View DataSet</a>
                            </li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children"><a href="javascript:void(0);"><i class="list-icon feather feather-clipboard"></i> <span class="hide-menu">Run Detection</span></a>
                        <ul class="list-unstyled sub-menu">
                            <li><a href="addPics.html">Add Pictures</a>
                            </li>
                            <li><a href="viewPics.html">View Pictures</a>
                            </li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children"><a href="javascript:void(0);"><i class="list-icon feather feather-clipboard"></i> <span class="hide-menu">Notify Factory Owner</span></a>
                        <ul class="list-unstyled sub-menu">
                            <li><a href="sendMail.html">Send Mail</a>
                            </li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children active"><a href="javascript:void(0);"><i class="list-icon feather feather-briefcase"></i> <span class="hide-menu">Manage Complains</span></a>
                        <ul class="list-unstyled sub-menu">
                            <li><a href="addComplain.html">Add Complain</a>
                            </li>
                            <li><a href="viewComplain.html">View Complain</a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <!-- /.side-menu -->
            </nav>            
            <!-- /.sidebar-nav -->
            <div class="sidebar-module nav-contact-info mx-3 mt-4 mb-3">
                <div class="d-flex flex-column align-items-center">
                    <h6 class="mb-2 fs-14">Need Help</h6><i class="feather feather-bell fs-24 color-color-scheme"></i>
                </div>
                <!-- /.d-flex -->
                <div class="contact-info-body bg-content-color-contrast text-center">
                    <p class="lh-25 headings-font-family">+91 9978758769
                        <br>aditshah26@gmail.com
                    </p>
                </div>
                <!-- /.contact-info-body -->
            </div>
            <!-- /.nav-contact-info -->
        </aside>
        <!-- /.site-sidebar -->
        <main class="main-wrapper clearfix">
            <!-- Page Title Area -->
            <div class="row page-title clearfix">
                <div class="page-title-left">
                    <h6 class="page-title-heading mr-0 mr-r-5">View DataSet</h6>
                </div>
            </div>
            <!-- /.page-title -->
            <!-- =================================== -->
            <!-- Different data widgets ============ -->
            <!-- =================================== -->
            <div class="widget-list">
                <div class="row">
                    <!-- /.widget-holder -->
                    <!-- /.widget-holder -->
                    <div class="col-md-12 widget-holder">
                        <div class="widget-bg">
                            <div class="widget-heading clearfix">
                                <h5>All DataSets</h5><a href="DatasetExportCSV.html">Download CSV</a>
                            </div>
                            <!-- /.widget-heading -->
                            <div class="widget-body clearfix">
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
                                <table class="table table-editable table-responsive" data-toggle="datatables">
                                    <thead>
                                        <tr>
                                            <th data-identifier>ID</th>
                                            <th data-editable>File Name</th>
                                            <th data-editable>File Path</th>
                                        </tr>
                                    </thead>
                                    <c:forEach items="${sessionScope.searchdataset}" var="data">
                                    <tbody>
                                        <tr>
                                            <td>${data.id}</td>
                                            <td>${data.fileName}</td>
                                            <td>${data.path}</td>
											<td><a href="editDataSet.html?id=${data.id}">Update</a></td>
											<td><a href="deleteDataSet.html?id=${data.id}">Delete</a></td>
                                        </tr>
                                    </tbody>
                                    </c:forEach>
                                </table>
                            </div>
                            <!-- /.widget-body -->
                        </div>
                        <!-- /.widget-bg -->
                    </div>
                    <!-- /.widget-holder -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.widget-list -->
        </main>
        <!-- /.main-wrappper -->
                <!-- /.card-body -->
                <form action="javascript:void(0)" class="card-footer" method="post">
                    <div class="d-flex justify-content-end"><i class="feather feather-plus-circle list-icon my-1 mr-3"></i>
                        <textarea class="border-0 flex-1" rows="1" style="resize: none" placeholder="Type your message here" type="text"></textarea>
                        <button class="btn btn-sm btn-circle bg-transparent" type="submit"><i class="feather feather-arrow-right list-icon fs-26 text-success"></i>
                        </button>
                    </div>
                </form>
            </div>
            <!-- /.card -->
        </div>
        <!-- /.chat-panel -->
    <!-- /.content-wrapper -->
    <!-- FOOTER -->
    <footer class="footer"><span class="heading-font-family">Copyright @ 2017. All rights reserved BonVue Admin by Unifato</span>
    </footer>
    <!--/ #wrapper -->
    <!-- Scripts -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.2/umd/popper.min.js"></script>
    <script src="AdminResources/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/metisMenu/2.7.0/metisMenu.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.perfect-scrollbar/0.7.0/js/perfect-scrollbar.jquery.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.15/js/jquery.dataTables.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-footable/3.1.4/footable.min.js"></script>
    <script src="AdminResources/js/theme.js"></script>
    <script src="AdminResources/js/custom.js"></script>
</body>
</html>