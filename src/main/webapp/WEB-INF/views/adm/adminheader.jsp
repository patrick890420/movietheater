<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16" href="/resources/admin/assets/images/favicon.png">
<title>JSL Movie Admin</title>
<!-- Custom CSS -->
<link href="/resources/admin/assets/extra-libs/c3/c3.min.css" rel="stylesheet">
<!-- datatables -->
<link href="/resources/admin/assets/extra-libs/datatables.net-bs4/css/dataTables.bootstrap4.css" rel="stylesheet">
<!-- chartist -->
<link href="/resources/admin/assets/libs/chartist/dist/chartist.min.css" rel="stylesheet">
<link href="/resources/admin/assets/extra-libs/jvector/jquery-jvectormap-2.0.2.css" rel="stylesheet" />
<!-- Custom CSS -->
<link href="/resources/admin/css/style.min.css" rel="stylesheet">
<link href="/resources/admin/css/event_notice/admin_event_notice.css" rel="stylesheet">
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
    <div class="lds-ripple">
      <div class="lds-pos"></div>
      <div class="lds-pos"></div>
    </div>
  </div>
  <!-- ============================================================== -->
  <!-- Main wrapper - style you can find in pages.scss -->
  <!-- ============================================================== -->
  <div id="main-wrapper" data-theme="light" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
    data-sidebar-position="fixed" data-header-position="fixed" data-boxed-layout="full">
    <!-- ============================================================== -->
    <!-- Topbar header - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <header class="topbar" data-navbarbg="skin6">
      <nav class="navbar top-navbar navbar-expand-md">
        <div class="navbar-header" data-logobg="skin6">
          <!-- This is for the sidebar toggle which is visible on mobile only -->
          <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)">
            <i class="ti-menu ti-close"></i>
          </a>
          <!-- ============================================================== -->
          <!-- Logo -->
          <!-- ============================================================== -->
          <div class="navbar-brand">
            <!-- Logo icon -->
            <a href="/"> <b class="logo-icon"> <!-- Dark Logo icon -->
<!--               <img src="/resources/admin/assets/images/logo-icon.png" alt="homepage" class="dark-logo" /> Light Logo icon -->
<!--               <img src="/resources/admin/assets/images/logo-icon.png" alt="homepage" class="light-logo" /> </b> End Logo icon  -->
              <!-- Logo text -->
              <span class="logo-text"> <!-- dark Logo text -->
                <img src="/resources/img/newlogo.png" alt="homepage" class="dark-logo" style="height: 75px" /> <!-- Light Logo text -->
                <img src="/resources/img/newlogo.png" class="light-logo" alt="homepage" style="height: 75px"/>
              </span>
            </a>
          </div>
          <!-- ============================================================== -->
          <!-- End Logo -->
          <!-- ============================================================== -->
          <!-- ============================================================== -->
          <!-- Toggle which is visible on mobile only -->
          <!-- ============================================================== -->
          <a class="topbartoggler d-block d-md-none waves-effect waves-light"
            href="javascript:void(0)" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <i class="ti-more"></i>
          </a>
        </div>
        <!-- ============================================================== -->
        <!-- End Logo -->
        <!-- ============================================================== -->
        <div class="navbar-collapse collapse" id="navbarSupportedContent">
          <!-- ============================================================== -->
          <!-- toggle and nav items -->
          <!-- ============================================================== -->
          <ul class="navbar-nav float-left mr-auto ml-3 pl-1">
            <!-- Notification -->
            <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle pl-md-3 position-relative"
              href="javascript:void(0)" id="bell" role="button"
              data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <span>
                <i data-feather="bell" class="svg-icon"></i>
              </span> 
              <span class="badge badge-primary notify-no rounded-circle">5</span>
            </a>
              <div class="dropdown-menu dropdown-menu-left mailbox animated bounceInDown">
                <ul class="list-style-none">
                  <li>
                    <div class="message-center notifications position-relative">
                      <!-- Message -->
                      <a href="javascript:void(0)" class="message-item d-flex align-items-center border-bottom px-3 py-2">
                        <div class="btn btn-danger rounded-circle btn-circle">
                          <i data-feather="airplay" class="text-white"></i>
                        </div>
                        <div class="w-75 d-inline-block v-middle pl-2">
                          <h6 class="message-title mb-0 mt-1">Luanch Admin</h6>
                          <span class="font-12 text-nowrap d-block text-muted">
                            Just see the my new admin!
                          </span> 
                          <span class="font-12 text-nowrap d-block text-muted">
                            9:30 AM
                          </span>
                        </div>
                      </a>
                      <!-- Message -->
                      <a href="javascript:void(0)" class="message-item d-flex align-items-center border-bottom px-3 py-2">
                        <span class="btn btn-success text-white rounded-circle btn-circle">
                        <i data-feather="calendar" class="text-white"></i></span>
                        <div class="w-75 d-inline-block v-middle pl-2">
                          <h6 class="message-title mb-0 mt-1"> Event today</h6>
                          <span class="font-12 text-nowrap d-block text-muted text-truncate">
                            Just a reminder that you have event</span>
                          <span class="font-12 text-nowrap d-block text-muted">
                            9:10 AM</span>
                        </div>
                      </a>
                      <!-- Message -->
                      <a href="javascript:void(0)"
                        class="message-item d-flex align-items-center border-bottom px-3 py-2">
                        <span
                        class="btn btn-info rounded-circle btn-circle"><i
                          data-feather="settings" class="text-white"></i></span>
                        <div class="w-75 d-inline-block v-middle pl-2">
                          <h6 class="message-title mb-0 mt-1">Settings</h6>
                          <span
                            class="font-12 text-nowrap d-block text-muted text-truncate">You
                            can customize this template as you want</span> <span
                            class="font-12 text-nowrap d-block text-muted">9:08
                            AM</span>
                        </div>
                      </a>
                      <!-- Message -->
                      <a href="javascript:void(0)"
                        class="message-item d-flex align-items-center border-bottom px-3 py-2">
                        <span
                        class="btn btn-primary rounded-circle btn-circle"><i
                          data-feather="box" class="text-white"></i></span>
                        <div class="w-75 d-inline-block v-middle pl-2">
                          <h6 class="message-title mb-0 mt-1">Pavan
                            kumar</h6>
                          <span
                            class="font-12 text-nowrap d-block text-muted">Just
                            see the my admin!</span> <span
                            class="font-12 text-nowrap d-block text-muted">9:02
                            AM</span>
                        </div>
                      </a>
                    </div>
                  </li>
                  <li><a
                    class="nav-link pt-3 text-center text-dark"
                    href="javascript:void(0);"> <strong>Check
                        all notifications</strong> <i class="fa fa-angle-right"></i>
                  </a></li>
                </ul>
              </div></li>
            <!-- End Notification -->
            <!-- ============================================================== -->
            <!-- create new -->
            <!-- ============================================================== -->
            <li class="nav-item dropdown"><a
              class="nav-link dropdown-toggle" href="#"
              id="navbarDropdown" role="button" data-toggle="dropdown"
              aria-haspopup="true" aria-expanded="false"> <i
                data-feather="settings" class="svg-icon"></i>
            </a>
              <div class="dropdown-menu"
                aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="#">Action</a> <a
                  class="dropdown-item" href="#">Another action</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Something else
                  here</a>
              </div></li>
          </ul>
          <!-- ============================================================== -->
          <!-- Right side toggle and nav items -->
          <!-- ============================================================== -->
          <ul class="navbar-nav float-right">
            <!-- ============================================================== -->
            <!-- Search -->
            <!-- ============================================================== -->
            <li class="nav-item d-none d-md-block"><a
              class="nav-link" href="javascript:void(0)">
                <form>
                  <div class="customize-input">
                    <input class="form-control custom-shadow custom-radius border-0 bg-white"
                      type="search" placeholder="Search"
                      aria-label="Search"> <i
                      class="form-control-icon" data-feather="search"></i>
                  </div>
                </form>
            </a></li>
            <!-- ============================================================== -->
            <!-- User profile and search -->
            <!-- ============================================================== -->
            <li class="nav-item dropdown"><a
              class="nav-link dropdown-toggle" href="javascript:void(0)"
              data-toggle="dropdown" aria-haspopup="true"
              aria-expanded="false"> <img
                src="/resources/admin/assets/images/users/profile-pic.jpg"
                alt="user" class="rounded-circle" width="40"> <span
                class="ml-2 d-none d-lg-inline-block"><span>Hello,</span>
                  <span class="text-dark">Jason Doe</span> <i
                  data-feather="chevron-down" class="svg-icon"></i></span>
            </a>
              <div
                class="dropdown-menu dropdown-menu-right user-dd animated flipInY">
                <a class="dropdown-item" href="javascript:void(0)"><i
                  data-feather="user" class="svg-icon mr-2 ml-1"></i> My
                  Profile</a> <a class="dropdown-item"
                  href="javascript:void(0)"><i
                  data-feather="credit-card" class="svg-icon mr-2 ml-1"></i>
                  My Balance</a> <a class="dropdown-item"
                  href="javascript:void(0)"><i data-feather="mail"
                  class="svg-icon mr-2 ml-1"></i> Inbox</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="javascript:void(0)"><i
                  data-feather="settings" class="svg-icon mr-2 ml-1"></i>
                  Account Setting</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="javascript:void(0)"><i
                  data-feather="power" class="svg-icon mr-2 ml-1"></i>
                  Logout</a>
                <div class="dropdown-divider"></div>
                <div class="pl-4 p-3">
                  <a href="javascript:void(0)"
                    class="btn btn-sm btn-info">View Profile</a>
                </div>
              </div></li>
            <!-- ============================================================== -->
            <!-- User profile and search -->
            <!-- ============================================================== -->
          </ul>
        </div>
      </nav>
    </header>
    <!-- ============================================================== -->
    <!-- End Topbar header -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- Left Sidebar - style you can find in sidebar.scss  -->
    <!-- ============================================================== -->
    <aside class="left-sidebar" data-sidebarbg="skin6">
      <!-- Sidebar scroll-->
      <div class="scroll-sidebar" data-sidebarbg="skin6">
        <!-- Sidebar navigation-->
        <nav class="sidebar-nav">
          <ul id="sidebarnav">
            <li class="sidebar-item">
              <a class="sidebar-link sidebar-link" href="admin.do" aria-expanded="false">
              <i data-feather="home" class="feather-icon"></i>
              <span class="hide-menu">Dashboard</span></a>
            </li>
            <!-- Menu start -->
            <!-- Member st -->
            <li class="list-divider"></li>
            <li class="sidebar-item">
              <a class="sidebar-link has-arrow" href="javascript:void(0)" aria-expanded="false">
                <i data-feather="user" class="feather-icon"></i>
                <span class="hide-menu">Member </span>
              </a>
              <ul aria-expanded="false" class="collapse  first-level base-level-line">
                <li class="sidebar-item">
                  <a href="/adm/adminMemberList.do" class="sidebar-link">
                  <span class="hide-menu"> table sample </span>
                  </a>
                </li>
                <li class="sidebar-item">
                  <a href="/adm/adminMemberInsert.do" class="sidebar-link">
                  <span class="hide-menu"> view & insert sample </span>
                  </a>
                </li>
                <li class="sidebar-item">
                  <a href="form-checkbox-radio.html" class="sidebar-link">
                  <span class="hide-menu"> Checkboxes & Radios </span>
                  </a>
                </li>
              </ul>
            </li>
            <!-- Member end -->
            <li class="list-divider"></li>
            <!-- Movie st -->
            <li class="sidebar-item">
              <a class="sidebar-link has-arrow" href="javascript:void(0)" aria-expanded="false">
                <i data-feather="film" class="feather-icon"></i>
                <span class="hide-menu">Movie</span>
              </a>
              <ul aria-expanded="false" class="collapse  first-level base-level-line">
                <li class="sidebar-item">
                  <a href="/adm/adminMovieInsert.do" class="sidebar-link">
                  <span class="hide-menu">Registration </span>
                  </a>
                </li>
                <li class="sidebar-item">
                  <a href="form-input-grid.html" class="sidebar-link">
                  <span class="hide-menu"> Form Grids </span>
                  </a>
                </li>
                <li class="sidebar-item">
                  <a href="form-checkbox-radio.html" class="sidebar-link">
                  <span class="hide-menu"> Checkboxes & Radios </span>
                  </a>
                </li>
              </ul>
            </li>
            <!-- Movie end -->
            <li class="list-divider"></li>
            <!-- Theater st -->
            <li class="sidebar-item">
              <a class="sidebar-link has-arrow" href="javascript:void(0)" aria-expanded="false">
                <i data-feather="grid" class="feather-icon"></i>
                <span class="hide-menu">Theater </span>
              </a>
              <ul aria-expanded="false" class="collapse  first-level base-level-line">
                <li class="sidebar-item">
                  <a href="form-inputs.html" class="sidebar-link">
                  <span class="hide-menu"> Form Inputs </span>
                  </a>
                </li>
                <li class="sidebar-item">
                  <a href="form-input-grid.html" class="sidebar-link">
                  <span class="hide-menu"> Form Grids </span>
                  </a>
                </li>
                <li class="sidebar-item">
                  <a href="form-checkbox-radio.html" class="sidebar-link">
                  <span class="hide-menu"> Checkboxes & Radios </span>
                  </a>
                </li>
              </ul>
            </li>
            <!-- theater end -->
            <li class="list-divider"></li>
            <!-- Theater st -->
            <li class="sidebar-item">
              <a class="sidebar-link has-arrow" href="javascript:void(0)" aria-expanded="false">
                <i data-feather="tag" class="feather-icon"></i>
                <span class="hide-menu">Ticketing </span>
              </a>
              <ul aria-expanded="false" class="collapse  first-level base-level-line">
                <li class="sidebar-item">
                  <a href="form-inputs.html" class="sidebar-link">
                  <span class="hide-menu"> Form Inputs </span>
                  </a>
                </li>
                <li class="sidebar-item">
                  <a href="form-input-grid.html" class="sidebar-link">
                  <span class="hide-menu"> Form Grids </span>
                  </a>
                </li>
                <li class="sidebar-item">
                  <a href="form-checkbox-radio.html" class="sidebar-link">
                  <span class="hide-menu"> Checkboxes & Radios </span>
                  </a>
                </li>
              </ul>
            </li>
            <!-- Ticketing end -->
            <li class="list-divider"></li>
            <!-- board st -->
            <li class="sidebar-item">
              <a class="sidebar-link has-arrow" href="javascript:void(0)" aria-expanded="false">
                <i data-feather="clipboard" class="feather-icon"></i>
                <span class="hide-menu">board </span>
              </a>
              <ul aria-expanded="false" class="collapse  first-level base-level-line">
                <li class="sidebar-item">
                  <a href="/adm/adminEvent.do" class="sidebar-link">
                  <span class="hide-menu"> Event </span>
                  </a>
                </li>
                <li class="sidebar-item">
                  <a href="/adm/adminNotice.do" class="sidebar-link">
                  <span class="hide-menu"> 공지사항 </span>
                  </a>
                </li>
              </ul>
            </li>
            <!-- board end -->
              <li class="list-divider"></li>
            <!-- Utility st -->
            <li class="sidebar-item">
              <a class="sidebar-link has-arrow" href="javascript:void(0)" aria-expanded="false">
                <i data-feather="file-text" class="feather-icon"></i>
                <span class="hide-menu">Utility</span>
              </a>
              <ul aria-expanded="false" class="collapse  first-level base-level-line">
                <li class="sidebar-item">
                  <a href="/adm/adminCodeList.do" class="sidebar-link">
                  <span class="hide-menu"> Code List </span>
                  </a>
                </li>
                <li class="sidebar-item">
                  <a href="form-input-grid.html" class="sidebar-link">
                  <span class="hide-menu">not yet</span>
                  </a>
                </li>
              </ul>
            </li>
            <!-- Utility end -->
            <li class="list-divider"></li>
            <li class="sidebar-item">
              <a class="sidebar-link sidebar-link" href="authentication-login1.html" aria-expanded="false">
              <i data-feather="log-out" class="feather-icon"></i>
              <span class="hide-menu">Logout</span>
              </a>
            </li>
          </ul>
        </nav>
        <!-- End Sidebar navigation -->
      </div>
      <!-- End Sidebar scroll-->
    </aside>
    <!-- ============================================================== -->
    <!-- End Left Sidebar - style you can find in sidebar.scss  -->
    <!-- ============================================================== -->