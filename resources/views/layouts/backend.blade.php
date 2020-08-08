<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="csrf-token" content="{{ csrf_token() }}">
		<title>@yield('title')</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Blood Doner | @yield('title')" name="description" />
        <meta content="Blood Doner" name="Sujon sorker" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="{{asset('assets/images/favicon.ico')}}">

        <!-- App css -->
        <link href="{{asset('assets/css/bootstrap.min.css')}}" rel="stylesheet" type="text/css" />
        <link href="{{asset('assets/css/icons.min.css')}}" rel="stylesheet" type="text/css" />
        <link href="{{asset('assets/css/app.min.css')}}" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="//cdn.datatables.net/1.10.7/css/jquery.dataTables_themeroller.css">

        <link rel="stylesheet" href="{{ asset('datatable/css/jquery.dataTables.css')}}">
        <link rel="stylesheet" href="{{ asset('datatable/css/jquery.dataTables.min.css')}}">

        <link rel="stylesheet" type="text/css" href="{{asset('sweetalert/sweetalert.css')}}">
		<style>
			/* centered columns styles */
			.row-centered {
			text-align:center;
			}
			.col-centered {
			display:inline-block;
			float:none;
			/* reset the text-align */
			text-align:left;
			/* inline-block space fix */
			margin-right:-4px;
			text-align: center;
			background-color: #99cc66;
			border: 1px solid #99cc66;
			}
			.card-header {
			padding: 1rem 1.5rem;
			margin-bottom: 0;
			background-color: #ddd;
			border-bottom: 0 solid #f7f7f7;
			}
		</style>

		@yield('css')
	</head>

    <body>
        <!-- Begin page -->
        <div id="wrapper">
            <!-- Topbar Start -->
            <div class="navbar-custom">
                <ul class="list-unstyled topnav-menu float-right mb-0">
                    {{-- <li class="">
                        <a class="nav-link" href="#" style="color:red;">{{__('text.language')}} <i class="fa fa-chevron-right" aria-hidden="true"></i></a>
                    </li>
                    <li class="">
                        <a class="nav-link" href="locale/bn" style="color:red;">{{__('text.bangla')}}</a>
                    </li>
                    <li class="">
                        <a class="nav-link" href="locale/en" style="color:red;"> {{__('text.english')}}</a>
                    </li> --}}

                    <li class="d-none d-sm-block">
                        <form class="app-search">
                            <div class="app-search-box">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Search...">
                                    <div class="input-group-append">
                                        <button class="btn" type="submit">
                                            <i class="fe-search"></i>
										</button>
									</div>
								</div>
							</div>
						</form>
					</li>

					<li class="dropdown notification-list">
                        <a class="nav-link dropdown-toggle nav-user mr-0 waves-effect" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">

                            @if (Auth::user()->profile_picture == 'NULL')
                            <img src="{{asset('public/dafault1.png')}}" alt="This is profile picture" style="height: 40px; widht:50px; border-radius:50% ;" />

                            @elseif (Auth::user()->profile_picture)
                            <img src="{{asset('public')}}/{{Auth::user()->profile_picture}}" alt="user-img" title="user-img" class="rounded-circle img-thumbnail avatar-lg">
                            @endif
                            <span class="pro-user-name ml-1">
                                {{Auth::user()->name}}<i class="mdi mdi-chevron-down"></i>
                            </span>

						</a>
                        <div class="dropdown-menu dropdown-menu-right profile-dropdown ">
                            <!-- item-->
                            <div class="dropdown-header noti-title">
                                <h6 class="text-overflow m-0 text-uppercase">Welcome {{Auth::user()->name}} </h6>
                                <br>
							</div>

                            <div class="dropdown-divider"></div>

                            <!-- item-->
							<a href="{{ route('logout') }}" class="notify-item" onclick="event.preventDefault();
							document.getElementById('logout-form').submit();">
								<i class="fe-log-out"></i>
                                <span>Logout</span>
							</a>
							<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
								@csrf
							</form>
						</div>
                    </li>
				</ul>
                <!-- LOGO -->
                <div class="logo-box">
                    <a href="{{ route('admin.index') }}" class="logo text-center" style="color: #99cc66">

                        <span class="logo-lg-text-light"><a class="navbar-brand logo_h" href="{{ route('index')}}"><img src="{{ asset('frontend/img/logo2.png')}}" alt="" style="height: 80px;
                            width: 80px;
                            margin-left: 81px;"></a></span>

					</a>
				</div>

                <ul class="list-unstyled topnav-menu topnav-menu-left m-0">
                    <li>
                        <button class="button-menu-mobile disable-btn ">
                            <i class="fe-menu ml-2" style="padding-right:10px; color:#99cc66;">BDB<span class="logo-lg-text-light"><a class="navbar-brand logo_h" href="{{ route('index')}}"><img src="{{ asset('frontend/img/logo2.png')}}" alt="" style="height: 48px;
                                width: 55px;
                                margin-left: 100px;
                                margin-top: -142px;"></a></span></i>
                        </button>

					</li>
                    <li>
                        <h4 class="page-title-main">@yield('title')</h4>
					</li>
				</ul>
			</div>
            <!-- end Topbar -->

            <!-- ========== Left Sidebar Start ========== -->
            <div class="left-side-menu">
                <div class="slimscroll-menu">
                    <!-- User box -->
                    <div class="user-box text-center">
                        @if(Auth::user()->profile_picture == 'NULL')
                        <img src="{{asset('public/dafault1.png')}}" alt="This is profile picture" style="height: 100px; widht:100px; border:5px solid #99cc66; border-radius: 50%;
                        " />

                        @elseif(Auth::user()->profile_picture)
                        <img src="{{asset('public')}}/{{Auth::user()->profile_picture}}" alt="user-img" title="user-img" class="rounded-circle img-thumbnail avatar-lg" style=" border:2px solid #99cc66; border-radius: 50%;
                        " >
                        @else
                        <img src="{{asset('public/dafault1.png')}}" alt="This is profile picture" style="height: 100px; widht:100px; border:5px solid #99cc66; border-radius: 50%;
                        " />
                        @endif
                        <div class="dropdown ">
                            <a href="#" class="text-muted dropdown-toggle h5 mt-2 mb-1 d-block" data-toggle="dropdown">{{Auth::user()->name}}</a>
                            <div class="dropdown-menu user-pro-dropdown">

                                <!-- item-->
								{{-- <a href="{{ route('logout') }}" class="dropdown-item notify-item" onclick="event.preventDefault();
								document.getElementById('logout-form').submit();">
									<i class="fe-log-out"></i>
									<span>Logout</span>
								</a>
								<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
									@csrf
								</form> --}}
							</div>
						</div>
					</div>
                    <!--- Sidemenu -->
                    <div id="sidebar-menu">
                        <ul class="metismenu" id="side-menu">
							<li>
								<a href="{{route('admin.index')}}" class="waves-effect"><i class="mdi mdi-view-dashboard"></i> <span>  {{__('text.dashboard')}} </span> </a>
                            </li>
                           @if(Auth::user()->type == 'admin')
                            <li>
								<a href="{{ route('donner')}}" class="waves-effect"><i class="mdi mdi-view-dashboard"></i> <span>{{__('text.donner_list')}}</span> </a>
                            </li>

                            <li>
								<a href="{{ route('hospital_support')}}" class="waves-effect"><i class="mdi mdi-view-dashboard"></i> <span>  {{__('text.hospital_support_list')}}</span> </a>
                            </li>
                            <li>
								<a href="{{ route('disease_medicine')}}" class="waves-effect"><i class="mdi mdi-view-dashboard"></i> <span>  {{__('text.disease_and_medicine_list')}}</span> </a>
                            </li>
                            <li>
								<a href="{{ route('fb_blood_broup')}}" class="waves-effect"><i class="mdi mdi-view-dashboard"></i> <span> {{__('text.fb_blood_donate_group')}}</span> </a>
                            </li>
                            @endif
                            <!-- Sidebar -->
                            <li >
								<a href="locale/bn" class="text-danger" title="Logout & Back To Website" class="waves-effect"><i class="mdi mdi-view-dashboard  "></i> <span> {{__('text.bangla')}} {{__('text.language')}}</span> </a>
                            </li>
                            <li >
								<a href="locale/en" class="text-danger" title="Logout & Back To Website" class="waves-effect"><i class="mdi mdi-view-dashboard  "></i> <span> {{__('text.english')}} {{__('text.language')}}</span> </a>
                            </li>

                            <li >
								<a href="{{ route('admin.log-out') }}" class="text-danger" title="Logout & Back To Website" class="waves-effect"><i class="mdi mdi-view-dashboard  "></i> <span> {{__('text.back_logout')}}</span> </a>
                            </li>
						</ul>
						<div class="clearfix"></div>
					</div>
					<!-- Sidebar -left -->
				</div>
			</div>
			<!-- Left Sidebar End -->

			<!-- ============================================================== -->
			<!-- Start Page Content here -->
			<!-- ============================================================== -->

			<div class="content-page">
				<div class="content">

					<!-- Start Content-->
					<div class="container-fluid">
						@yield('content')
					</div> <!-- container -->

				</div> <!-- content -->

				<!-- Footer Start -->
				<footer class="footer">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-6">
								2020 © Blood Donners BD.[Sujon Kumer].
							</div>
						</div>
					</div>
				</footer>
				<!-- end Footer -->
			</div>

			<!-- ============================================================== -->
			<!-- End Page content -->
			<!-- ============================================================== -->
		</div>
        <!-- END wrapper -->
        <script src="{{ asset('frontend/vendors/jquery/jquery-3.2.1.min.js')}}"></script>
        <script src="{{ asset('frontend/vendors/bootstrap/bootstrap.bundle.min.js')}}"></script>
        <script src="{{ asset('frontend/vendors/Magnific-Popup/jquery.magnific-popup.min.js')}}"></script>
        <script src="{{ asset('frontend/js/jquery.ajaxchimp.min.js')}}"></script>
		<!-- Vendor js -->
		<script src="{{asset('assets/js/vendor.min.js')}}"></script>
		<!-- knob plugin -->
		<script src="{{asset('assets/libs/jquery-knob/jquery.knob.min.js')}}"></script>
		<!-- App js -->
		<script src="{{asset('assets/js/app.min.js')}}"></script>
		<!-- DataTables -->
        <script type="text/javascript" src="{{asset('datatable/js/jquery.dataTables.min.js')}}"></script>
        <script src="{{asset('frontend/js/moment.min.js')}}"></script>
		<script type="text/javascript" src="{{asset('sweetalert/sweetalert.min.js')}}"></script>
		<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
		<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
		<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
		<script src="{{ asset('custom/form.js') }}" ></script>
        <script src="{{ asset('custom/custom.js') }}" ></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

		<script type="text/javascript">
		</script>
		@yield('js')
	</body>
</html>
