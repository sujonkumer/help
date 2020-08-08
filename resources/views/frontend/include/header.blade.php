
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>BLOOD | @yield('title')</title>
  <link rel="icon" href="{{ asset('frontend/img/Fevicon.png')}}" type="image/png">
  <link rel="stylesheet" href="{{ asset('frontend/vendors/bootstrap/bootstrap.min.css')}}">
  <link rel="stylesheet" href="{{ asset('frontend/vendors/fontawesome/css/all.min.css')}}">
  <link rel="stylesheet" href="{{ asset('frontend/vendors/themify-icons/themify-icons.css')}}">
  <link rel="stylesheet" href="{{ asset('frontend/vendors/linericon/style.css')}}">
  <link rel="stylesheet" href="{{ asset('frontend/css/magnific-popup.css')}}">
  <link rel="stylesheet" href="{{ asset('frontend/vendors/flat-icon/font/flaticon.css')}}">
  <link href="{{asset('assets/css/icons.min.css')}}" rel="stylesheet" type="text/css" />
  <link href="{{asset('assets/css/app.min.css')}}" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" type="text/css" href="{{asset('sweetalert/sweetalert.css')}}">

  <link rel="stylesheet" href="//cdn.datatables.net/1.10.7/css/jquery.dataTables_themeroller.css">

  <link rel="stylesheet" href="{{ asset('datatable/css/jquery.dataTables.css')}}">
  <link rel="stylesheet" href="{{ asset('datatable/css/jquery.dataTables.min.css')}}">

  <link rel="stylesheet" href="{{ asset('frontend/css/style.css')}}">
  <script src="{{ asset('frontend/vendors/jquery/jquery-3.2.1.min.js')}}"></script>

  <link rel="stylesheet" href="{{ asset('frontend/css/custome_style.css')}}">
  <link rel="stylesheet" href="{{ asset('frontend/css/responsive.css')}}">


  <style>
      .marquee_area{
        background-color: #3B1D82;
        height: 50px;
        box-shadow: 0px 0px 5px 5px #138496;
      }
        html {
        scroll-behavior: smooth;
        }
      .marquee_area .mar{
        white-space: nowrap;
      }
      .marquee_area .mar p{
          line-height: 50px;
          color:#fff;
          font-size: bold;
          font-size: 18px;
          text-transform: uppercase
      }

      video {
        /* override other styles to make responsive */
        width: 100%    !important;
        height: auto   !important;
        }




  </style>
</head>
<body>


  <!--================ Header Menu Area start =================-->
  <a href="#Top"></a>
  <header class="header_area">
    <div class="main_menu">
      <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container box_1620">
          <a class="navbar-brand logo_h" href="{{ route('index')}}"><img src="{{ asset('frontend/img/logo2.png')}}" alt="" style="height: 80px; width:90px; "></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>

          <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
            <ul class="nav navbar-nav menu_nav justify-content-end">
            <li class="nav-item active"><a class="nav-link" href="{{ route('index')}}"> {{__('text.home')}}</a></li>

            <li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle text-bold" data-toggle="dropdown" role="button" aria-haspopup="true"
            aria-expanded="false"">{{__('text.country')}}  <i class="fa fa-chevron-down" aria-hidden="true"></i></a>
                <ul class="dropdown-menu">
                <li class="nav-item"><a class="nav-link" href="{{route('index')}}">Bangladesh</a></li>
                <li class="nav-item"><a class="nav-link" href="{{ (request()->is('index.select')) ? 'active' : '' }}">India</a></li>

                <li class="nav-item"><a class="nav-link" href="{{ (request()->is('index.select')) ? 'active' : '' }}">America</a></li>

                </ul>
              </li>















            {{-- <li class="nav-item"><a class="nav-link" href="#hospital_ambulance_info">{{__('text.hospital_support')}}</a></li>

            <li class="nav-item"><a class="nav-link" href="#disease_and_medicine">{{__('text.diesease_medicene')}}</a></li> --}}
            <li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle text-bold" data-toggle="dropdown" role="button" aria-haspopup="true"
                  aria-expanded="false"> {{__('text.our_services')}}  <i class="fa fa-chevron-down" aria-hidden="true"></i></a>
                <ul class="dropdown-menu">
            <li class="nav-item"><a class="nav-link" href="#our_services">{{__('text.our_service')}}</a></li>

            <li class="nav-item"><a class="nav-link" href="#hospital_ambulance_info">{{__('text.hospital_support')}}</a></li>
            <li class="nav-item"><a class="nav-link" href="#fire_service">{{__('text.fire_service')}}</a></li>
            <li class="nav-item"><a class="nav-link" href="#thana">{{__('text.thana_service')}}</a></li>
            <li class="nav-item"><a class="nav-link" href="#bus_counter">{{__('text.bus_counter')}}</a></li>
            <li class="nav-item"><a class="nav-link" href="#govt_link">{{__('text.govt_website')}}</a></li>
            <li class="nav-item"><a class="nav-link" href="#fb_blood_group">{{__('text.facebook_blood_group')}}</a></li>
            <li class="nav-item"><a class="nav-link" href="#disease_and_medicine">{{__('text.diesease_medicene')}}</a></li>
            <li class="nav-item"><a class="nav-link" href="#top5">{{__('text.top_donners')}}</a></li>
            <li class="nav-item"><a class="nav-link" href="#gallery">{{__('text.gallery')}}</a></li>
            <li class="nav-item"><a class="nav-link" href="#footer_area">{{__('text.about_our_website')}}</a></li>
                </ul>
              </li>
              <li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle text-bold" data-toggle="dropdown" role="button" aria-haspopup="true"
                  aria-expanded="false""> {{__('text.help_line')}}  <i class="fa fa-chevron-down" aria-hidden="true"></i></a>
                <ul class="dropdown-menu">
                <li class="nav-item"><a class="nav-link" href="#video">{{__('text.how_to_use_blood_donate_website')}}</a>
                </ul>
              </li>

            <li class="nav-item about_modal"><a class="nav-link" href="javaScript:void(0)"> {{__('text.abouts')}}</a></li>

            <li class="nav-item contact_modal d-none"><a class="nav-link" href="javaScript:void(0)"> {{__('text.contact_us')}}</a></li>
              <li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle text-bold" data-toggle="dropdown" role="button" aria-haspopup="true"
                  aria-expanded="false" style="color:#D00000;"> {{__('text.language')}}  <i class="fa fa-chevron-down" aria-hidden="true"></i></a>
                <ul class="dropdown-menu">
                <li class="nav-item"><a class="nav-link" href="locale/bn">{{__('text.bangla')}}</a>
                  <li class="nav-item"><a class="nav-link" href="locale/en"> {{__('text.english')}}</a>
                </ul>
              </li>


              <li class="nav-item submenu dropdown">
                    <a href="#" class="nav-link dropdown-toggle text-uppercase text-bold" data-toggle="dropdown" role="button" aria-haspopup="true"
              aria-expanded="false" style="color:#D00000;">{{__('text.login_&_registration')}}  <i class="fa fa-chevron-down" aria-hidden="true"></i></a>
                    <ul class="dropdown-menu">
                    <li class="nav-item"><a class="nav-link login_form" href="javaScript:void(0)"> {{__('text.login')}}</a></li>
                    <li class="nav-item"><a class="nav-link addRegister" href="javaScript:void(0)"> {{__('text.registration')}}</a></li>
                    </ul>
				</li>

              {{-- <li class="nav-item"><a class="nav-link text-bold text-uppercase" href="{{ route('logout') }}" onclick="event.preventDefault();
							document.getElementById('logout-form').submit();">Log out</a></li>
              <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                @csrf
            </form> --}}

            </ul>
            {{-- <ul class="nav-right text-center text-lg-right py-4 py-lg-0">
            <li><a href="javaScript:void(0)" class="login_form">{{ __('text.log_in') }} </a></li>
            <li><a href="javaScript:void(0)" class="addRegister">{{ __('text.registration')}} </a></li>
            </ul> --}}
          </div>
        </div>
      </nav>
    </div>
  </header>

  <!--================Header Menu Area =================-->
  <!--================Hero Banner Area Start =================-->
  <section class="hero-banner">
    <div class="container text-center" style="margin-top: -10%;">

        <a class="navbar-brand logo_h" href="{{ route('index')}}"><img src="{{ asset('frontend/img/logo2.png')}}" alt="" style="height: 40px; width:40px; "></a>

      <p> {{__('text.wlc_to')}} </p>
      <h1 class="mb-4"> {{__('text.blood_search')}} </h1>

      <form id="searchForm" method="GET" action="{{route('search')}}" >
        @csrf
      <div class="search_section ">
        <div class="serarch_option " >
            <select name="blood_group_search" id="blood_group_search" class="form-control select_Blood_group" required>
            <option value="">{{__('text.select_blood_grous')}}</option>
                <option value="a+">A+   ( A Posative )</option>
                <option value="a-">A-   ( A Negative )</option>
                <option value="b+">B+ ( B+ Posative )</option>
                <option value="b-">B- ( B- Negative )</option>
                <option value="ab+">AB+ ( AB+ Posative )</option>
                <option value="ab-">AB- ( AB- Negative )</option>
                <option value="o+">O+ ( O+ Posative )</option>
                <option value="o-">O- ( O- Negative )</option>
            </select>

            <select name="search_district" id="search_district" class="form-control my-3 select_district" required>
            <option value=""> {{__('text.select_district')}}</option>
                <option value="Bagerhat">Bagerhat</option>
                <option value="Bandarban">Bandarban</option>
                <option value="Barguna">Barguna</option>
                <option value="Barisal">Barisal</option>
                <option value="Bhola">Bhola</option>
                <option value="Bogra">Bogra</option>
                <option value="Brahmanbaria">Brahmanbaria</option>
                <option value="Chandpur">Chandpur</option>
                <option value="Chapainababganj">Chapainababganj</option>
                <option value="Chittagong">Chittagong</option>
                <option value="Chuadanga">Chuadanga</option>
                <option value="Comilla">Comilla</option>
                <option value="Cox's Bazar">Cox's Bazar</option>
                <option value="Dhaka">Dhaka</option>
                <option value="Dinajpur">Dinajpur</option>
                <option value="Faridpur">Faridpur</option>
                <option value="Feni">Feni</option>
                <option value="Gaibandha">Gaibandha</option>
                <option value="Gazipur">Gazipur</option>
                <option value="Gopalganj">Gopalganj</option>
                <option value="Habiganj">Habiganj</option>
                <option value="Jamalpur">Jamalpur</option>
                <option value="Jessore">Jessore</option>
                <option value="Jhalokati">Jhalokati</option>
                <option value="Jhenaidah">Jhenaidah</option>
                <option value="Joypurhat">Joypurhat</option>
                <option value="Khagrachhari">Khagrachhari</option>
                <option value="Khulna">Khulna</option>
                <option value="Kishoregonj">Kishoregonj</option>
                <option value="Kurigram">Kurigram</option>
                <option value="Kushtia">Kushtia</option>
                <option value="Lakshmipur">Lakshmipur</option>
                <option value="Lalmonirhat">Lalmonirhat</option>
                <option value="Madaripur">Madaripur</option>
                <option value="Magura">Magura</option>
                <option value="Manikganj">Manikganj</option>
                <option value="Maulvibazar">Maulvibazar</option>
                <option value="Meherpur">Meherpur</option>
                <option value="Munshiganj">Munshiganj</option>
                <option value="Mymenshingh">Mymenshingh</option>
                <option value="Naogaon">Naogaon</option>
                <option value="Narail">Narail</option>
                <option value="Narayanganj">Narayanganj</option>
                <option value="Narshindi">Narshindi</option>
                <option value="Natore">Natore</option>
                <option value="Netrakona">Netrakona</option>
                <option value="Nilphamari">Nilphamari</option>
                <option value="Noakhali">Noakhali</option>
                <option value="Pabna">Pabna</option>
                <option value="Panchagarh">Panchagarh</option>
                <option value="Patuakhali">Patuakhali</option>
                <option value="Pirojpur">Pirojpur</option>
                <option value="Rajbari">Rajbari</option>
                <option value="Rajshahi">Rajshahi</option>
                <option value="Rangamati">Rangamati</option>
                <option value="Rangpur">Rangpur</option>
                <option value="Shariatpur">Shariatpur</option>
                <option value="Shatkhira">Shatkhira</option>
                <option value="Sherpur">Sherpur</option>
                <option value="Sirajganj">Sirajganj</option>
                <option value="Sunamganj">Sunamganj</option>
                <option value="Sylhet">Sylhet</option>
                <option value="Tangail">Tangail</option>
                <option value="Thakurgaon">Thakurgaon</option>
            </select>
            {{-- <input type="text" name="area" id="area" placeholder="Enter Area Name..." class="area form-conrtol"> --}}
            <div class="wrap search_area">
                <div class="search">
                <input type="search" name="area" class="searchTerm" placeholder="{{__('text.search_area')}}" required>
                   <button type="submit" class="searchButton search_icon">
                     <i class="fa fa-search"></i>
                  </button>
                </div>
             </div>
        </div>
    </div>
</form>

    </div>
  </section>

  <script>
    $('#searchForm').submit(function(e){
       e.preventDefault();
       let url = $(this).attr('action')
       let method = $(this).attr('method')
       let data = $(this).serialize()
       $.ajax({
           url: url,
           type: method,
           data: data,
           success: function(data){
               // console.log(data);
               $("#searchForm")[0].reset();
               $('#searchResult').empty().html(data)
           }
       })
   });

   </script>
