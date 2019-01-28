<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1,shrink-to-fit=no">
    <link rel="icon" type="image/png" sizes="16x16" href="AdminResources/images/favicon.png">
    <link rel="stylesheet" href="AdminResources/css/pace.css">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Welcome To Factory Intelligence</title>
    <!-- CSS -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600|Roboto:400" rel="stylesheet" type="text/css">
    <link href="AdminResources/css/material-icons.css" rel="stylesheet" type="text/css">
    <link href="AdminResources/css/monosocialiconsfont.css" rel="stylesheet" type="text/css">
    <link href="AdminResources/css/feather.css" rel="stylesheet" type="text/css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery.perfect-scrollbar/0.7.0/css/perfect-scrollbar.min.css" rel="stylesheet" type="text/css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.min.css" rel="stylesheet" type="text/css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick-theme.min.css" rel="stylesheet" type="text/css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/switchery/0.8.2/switchery.min.css" rel="stylesheet" type="text/css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-daterangepicker/2.1.25/daterangepicker.min.css" rel="stylesheet" type="text/css">
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
                <a href="mainpage.html" class="navbar-brand">
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
            <!-- /.navbar-search -->
            <div class="spacer"></div>
            <!-- Button: Create New -->
            <div class="btn-list dropdown d-none d-md-flex mr-4 mr-0-rtl ml-4-rtl"><a href="logout.html" class="btn btn-primary dropdown-toggle ripple"><i class="list-icon feather feather-user"></i>Log Out</a>
            </div>
            <!-- /.btn-list -->
            <!-- User Image with Dropdown -->
    <!-- /.navbar-right -->
    <!-- Right Menu -->
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
                            <img src="AdminResources/images/Photo(1).jpg" class="rounded-circle" alt="">
                        </figure><a href="page-profile.html" class="text-muted side-user-link"><i class="feather feather-settings list-icon"></i></a>
                    </div>
                    <!-- /.d-inline-block -->
                    <div class="lh-14 mr-t-5"><a href="page-profile.html" class="hide-menu mt-3 mb-0 side-user-heading fw-500">Adit Shah</a>
                        <br><small class="hide-menu">Admin</small>
                    </div>
                </div>
                <!-- /.col-sm-12 -->
            </div>
            <!-- /.side-user -->
            <!-- Sidebar Menu -->
            <nav class="sidebar-nav">
                <ul class="nav in side-menu">
                    <li class="current-page menu-item-has-children"><a href="mainpage.html"><i class="list-icon feather feather-command"></i> <span class="hide-menu">Home</span></a>
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
                    <li class="menu-item-has-children"><a href="javascript:void(0);"><i class="list-icon feather feather-clipboard"></i> <span class="hide-menu">Analyze Detection</span></a>
                        <ul class="list-unstyled sub-menu">
                            <li><a href="addPics.html">Add Pictures</a>
                            </li>
                            <li><a href="runDetection.html">Run Object Detection</a>
                            </li>
                            <li><a href="showResult.html">View Stored Result</a>
                            </li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children"><a href="javascript:void(0);"><i class="list-icon feather feather-clipboard"></i> <span class="hide-menu">Notify Factory Owner</span></a>
                        <ul class="list-unstyled sub-menu">
                            <li><a href="uploadCSVandSendMail.html">Send Mail</a>
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
                <!-- /.page-title-left -->
                <div class="widget-body clearfix">
                <h5 class="box-title mr-b-0">Factory Intelligence</h5>
                </div>
                <!-- /.page-title-right -->
            </div>
            <hr>
                        <!-- /.widget-list -->
            <hr>
            <div class="widget-list row">
                <div class="widget-holder widget-latest-posts col-md-12">
                    <div class="widget-bg">
                        <div class="widget-body">
                            <div class="cursor-move carousel" data-slick='{"slidesToShow": 1, "dots": true, "arrows": false}'>
                                <article>
                                    <div class="row">
                                        <figure class="col-5 post-img">
                                            <img src="AdminResources/images/1.jpg">
                                        </figure>
                                        <div class="col-7 post-details">
                                            <h5 class="box-title">Intelligence System aims to provide different services for Factory workers and their owners. Factory Intelligence runs Object Detection on every single worker through machine learning to keep note of all rules which should be followed by them. Relative data is sent back to their databases which handle by factory admin. Functions of this system include Object Detection, store data into a database, update information to Admin and providing updated information. Thus, this project aims to enhance the traditional Factory Intelligence and make it more effective and compatible with the current technology.</h5>
                                        </div>
                                    </div>
                                </article>
                                <article>
                                    <div class="row">
                                        <figure class="col-5 post-img">
                                            <img src="AdminResources/images/2.jpg">
                                        </figure>
                                        <div class="col-7 post-details">
                                            <h5 class="box-title">This is an AI-based system portal which is helpful for regular industrial business activity, which is easily operable by computers.
                                            </h5>
                                             </div>
                                    </div>
                                </article>
                                <article>
                                    <div class="row">
                                        <figure class="col-5 post-img">
                                            <img src="AdminResources/images/3.jpg">
                                        </figure>
                                        <div class="col-7 post-details">
                                            <h5 class="box-title">Intelligence System objectives to offer one-of-a-kind services for factory employees and their proprietors. Factory unit Intelligence runs item detection every single employee through high-quality digicam to preserve note of all rules which should be followed by means of them. Relative data is despatched back to their databases which manage through manufacturing facility admin. Features of this machine encompass item detection, store facts into a database, replace records to Admin and offering up to date records. For that reason, this project aims to decorate the traditional Factory Intelligence and make it more effective and compatible with the modern-day generation.
Detection of objects using any camera is not an easy task for anyone.We are solving this problem. As the by using a high-quality camera in Factory for more accuracy while detecting pieces of equipment.
Intelligence System aims to supply completely different services for manufacturing employees and their house owners. Manufacturing Intelligence runs object detection on every single employee through Camera to stay note of all rules that ought to be followed by them. Relative information is shipped back to their databases that handle by manufacturing admin. Functions of this technique embrace object detection, store information into a info, update data to Admin and providing updated data. Thus, this project aims to boost the standard Factory Intelligence and create it simpler and compatible with the present technology.
                                            </h5>
                                                                                </div>
                                </article>
                            </div>
                        </div>
                    </div>
                    <!-- /.widget-bg -->
                </div>
                <!-- /.widget-holder -->
                <!-- /.widget-holder -->
                <!-- /.widget-holder -->
            </div>
            <!-- /.widget-list -->
            <hr>
            <!-- /.widget-list -->
            <hr>
            <!-- /.widget-list -->
        </main>
        <!-- /.main-wrappper -->
        <!-- RIGHT SIDEBAR -->
        <!-- CHAT PANEL -->
        <!-- /.chat-panel -->
    </div>
    <!-- /.content-wrapper -->
    <!-- FOOTER -->
    <footer class="footer"><span class="heading-font-family">Copyright @ 2018. All rights reserved Admin by Adit Shah</span>
    </footer>
    </div>
    <!--/ #wrapper -->
    <!-- Scripts -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.2/umd/popper.min.js"></script>
    <script src="AdminResources/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/metisMenu/2.7.0/metisMenu.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.perfect-scrollbar/0.7.0/js/perfect-scrollbar.jquery.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/countup.js/1.9.2/countUp.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/switchery/0.8.2/switchery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-circle-progress/1.2.2/circle-progress.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-sparklines/2.1.2/jquery.sparkline.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-daterangepicker/2.1.25/daterangepicker.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/mithril/1.1.1/mithril.js"></script>
    <script src="AdminResources/js/widgets.js"></script>
    <script src="AdminResources/js/theme.js"></script>
    <script src="AdminResources/js/custom.js"></script>
</body>

</html>