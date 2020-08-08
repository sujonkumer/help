@extends('layouts.frontend')
@section('title','Donners BD-2020')
@section('content')



  <!--================ Donners section Start =================-->
  <section class="section-margin" style="margin-top:0px;" id="blood_donate">
    <div class="container">
      <div class="section-intro text-center">
        <h2 class="primary-text"> {{ __('text.our_honarable_donners')}} </h2>
        <img src="{{ asset('frontend/img/home/section-style.png')}}" alt="">
      </div>
      <div class="row my-3">
        <div class="col-12 text-center">
        <a class="button mb-2 addRegister" href="javaScript:void(0)" > <i class="fa fa-plus-circle pr-2"></i>
             {{ __('text.registration_for_blood_donate')}} </a>
        </div>
      </div>
      @if(Session::get('message'))
            <div class="alert alert-success alert-dismissible fade show" role="alert">
            <strong>Message : </strong> {{Session::get('message')}}
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            </div>
        @endif

        <div id="searchResult" class="row">
            @foreach ($donners as $donner)
            <div class="col-lg-4 col-md-4 mb-4 my-1">
              <div class="text-center card-priceTables">
                <div class="priceTable-header">
                    <h2 class="card-title text-white"><b>Name:</b> <span class="">{{ $donner->name }}</span></h2>
                    <h4 class="card-text text-white"><b>Blood Group:</b> <span class="text-uppercase"> {{ $donner->blood_group }}</span></h4>
                    <p class="card-text text-white text-bold">Mobile: <span class="text-uppercase"> {{ $donner->mobile }}</span></p>

                    <p class="card-text text-white text-bold">District: <span class="text-uppercase"> {{ $donner->district }}</span></p>
                    <p class="card-text text-white text-bold">Local Area: <span class="text-uppercase"> {{ $donner->area }}</span></p>

                    @if ($donner->status == 0)
                    <span class="text-white">Status: </span> <span class="badge badge-success p-2">Active</span>

                    @else <span class="text-white">Status: </span> <span class="badge badge-danger p-2">Pending... </span>
                    @endif

                    @if ($donner->last_donate_time == NULL)
                    <p class="card-text text-white text-bold pt-2">Last Blood Donate Date:  <span class="text-uppercase " style="color: green;">NULL</span></p>
                    @else

                    <p class="card-text text-white text-bold pt-2">Last Blood Donate Date: <span class="text-uppercase " style="color: red;">  {{ $donner->last_donate_time }}</span></p>
                    @endif

                </div>
                <div class="priceTable-footer">
                  <a class="button" href="javaScript:void(0)">Thank You !</a>
                </div>
              </div>
            </div>
            @endforeach
            {{ $donners->links() }}
          </div>

    </div>
  </section>
  <!--================ Donners section End =================-->



    <!--================ Blood groups section Start =================-->
    <section class="section-margin i_have_some_blood_donners" id="">
        <div class="container">
            <div class="marquee_area  ">
                <marquee behavior="scroll" scrollamount="6" class="mar">
                    <p>
                        <i class="fa fa-quote-left" aria-hidden="true"></i>
                        বাঁচতে হলে জানতে হবে <i class="fa fa-quote-right" aria-hidden="true"></i>
                        “তুচ্ছ নয় রক্তদান,
                            বাঁচাতে পারে একটি প্রাণ”

                            “রক্ত দিলে হয়না ক্ষতি,
                            জাগ্রত করে মানবিক অনুভুতি”

                            “আমার রক্তে যদি সহযোগিতা করে- মুমূর্ষ রোগীর
                            প্রাণ,
                            তাহলে আমি কেন করবোনা স্বেচ্ছায় রক্তদান?”

                            “স্বেচ্ছায় রক্তদান করুন,
                            মুমূর্ষ রোগীর মুখে হাঁসি ফোটান”

                            “পৃথিবীর সবোর্চ্চ সেবা করতে চান,
                            তাহলে মুমূর্ষ রোগীকে করুন- রক্তদান”

                            “যদি করেন নিয়মিত রক্ত-দান,
                            রক্তের অভাবে ঝরবেনা একটিও প্রাণ”

                            “স্বেচ্ছায় রক্তদান করুন,
                            সামাজিক অঙ্গীকার পালন করুন”

                            “জাতি ধর্ম ও দল নির্বিশেষে,
                            রক্ত দিবো হেসে হেসে”

                            ”রক্তদানের পাশাপাশি আশে-পাশের মানুষগুলোকেও
                            রক্তদানে উৎসাহি করুন;
                            অসহায় মুমূর্ষ রোগীদের রক্তের ব্যবস্থা করে
                            জীবন বাঁচাতে সহযোগিতা করুন”
                    </p>
                </marquee>
            </div>
        <div class="row my-3">
            <div class="col-md-4 align-self-center ">
                <div class="innovative-wrapper">
                    <h2 class="primary-text">{{__('text.blood_donners_bd')}}<br class=" d-xl-block"></h2>
                    <p class="h3 primary-text2 mb-3"><i class="fa fa-quote-left" aria-hidden="true"></i>
                        বাঁচতে হলে জানতে হবে <i class="fa fa-quote-right" aria-hidden="true"></i>
                    </p>

                    <ol type="i">
                        <li>“তুচ্ছ নয় রক্তদান,
                            বাঁচাতে পারে একটি প্রাণ”</li>
                        <li>“রক্ত দিলে হয়না ক্ষতি,
                            জাগ্রত করে মানবিক অনুভুতি”</li>
                        <li>“আমার রক্তে যদি সহযোগিতা করে- মুমূর্ষ রোগীর
                            প্রাণ,
                            তাহলে আমি কেন করবোনা স্বেচ্ছায় রক্তদান?”</li>
                        <li>“স্বেচ্ছায় রক্তদান করুন,
                            মুমূর্ষ রোগীর মুখে হাঁসি ফোটান”</li>
                        <li>“পৃথিবীর সবোর্চ্চ সেবা করতে চান,
                            তাহলে মুমূর্ষ রোগীকে করুন- রক্তদান”</li>
                        <li> “যদি করেন নিয়মিত রক্ত-দান,
                            রক্তের অভাবে ঝরবেনা একটিও প্রাণ”</li>
                        <li>“স্বেচ্ছায় রক্তদান করুন,
                            সামাজিক অঙ্গীকার পালন করুন”</li>
                        <li> “জাতি ধর্ম ও দল নির্বিশেষে,
                            রক্ত দিবো হেসে হেসে”</li>
                        <li>”রক্তদানের পাশাপাশি আশে-পাশের মানুষগুলোকেও
                            রক্তদানে উৎসাহি করুন;
                            অসহায় মুমূর্ষ রোগীদের রক্তের ব্যবস্থা করে
                            জীবন বাঁচাতে সহযোগিতা করুন”</li>
                    </ul>
                </div>
            </div>
            <div class="col-md-8">
                <div class="col-md-12 mb-3">
                    <ul class="clockdiv text-center help_line donners_wrapper_ul" id="clockdiv">
                        <li class="clockdiv-single clockdiv-day">
                            <h1 class="">{{ $A_posative->count() }}</h1>
                            <span class="text-bold">A+</span>
                            </li>
                            <li class="clockdiv-single clockdiv-minute">
                            <h1 class="hours">{{ $A_negetive->count() }}</h1>
                            <span class="smalltext">A-</span>
                            </li>
                            <li class="clockdiv-single clockdiv-minute">
                            <h1 class="minutes">{{ $B_posative->count() }}</h1>
                            <span class="smalltext">B+</span>
                            </li>
                            <li class="clockdiv-single clockdiv-day">
                                <h1 class="">{{ $B_negetive->count() }}</h1>
                                <span class="text-bold">B-</span>
                            </li>
                    </ul>
                </div>
                <div class="col-md-12 mb-3">
                    <ul class="clockdiv text-center help_line" id="clockdiv">
                        <li class="clockdiv-single clockdiv-hour">
                            <h1 class="hours">{{ $AB_posative->count() }}</h1>
                            <span class="smalltext">AB+</span>
                        </li>
                        <li class="clockdiv-single clockdiv-minute">
                            <h1 class="minutes">{{ $AB_negetive->count() }}</h1>
                            <span class="smalltext">AB-</span>
                        </li>
                        <li class="clockdiv-single clockdiv-hour">
                            <h1 class="hours">{{ $O_posative->count() }}</h1>
                            <span class="smalltext">O+</span>
                        </li>

                    </ul>
                </div>
                <div class="col-md-12 mt-2">
                    <ul class="clockdiv text-center help_line" id="clockdiv">
                        <li class="clockdiv-single clockdiv-minute">
                            <h1 class="minutes">{{ $O_negetive->count() }}</h1>
                            <span class="smalltext">O-</span>
                        </li>

                    </ul>
                    <p class="h4 primary-text2 mb-2 text-center">{{__('text.blood_grous')}}</p>
                </div>
            </div>


        </div>

        </div>
    </section>
    <!--================ Blood groups section End =================-->


    <!--================ Whar are benifits  section Start =================-->
    <section class="section-margin " id="our_services">
        <div class="container">
        <div class="section-intro text-center pb-98px">
        <p class="section-intro__title"> {{__('text.blood_donners_bd')}}</p>
            <h2 class="primary-text">{{__('text.what_are_the_benefits')}}</h2>
            <img src="{{ asset('frontend/img/home/section-style.png')}}" alt="">
        </div>


        <div class="row justify-content-center pb-5">
                <a href="#blood_donate" style="color:#797979">
                    <div class="cal-md-4 px-4">
                        <div class="card-feature mb-5 mb-lg-0">
                            <div class="feature-icon">
                                <i class="fa fa-tint" aria-hidden="true"></i>

                            </div>
                            <h3>ব্লাড দিতে এবং নিতে পারবেন</h3>
                            <p> আপনারা এই Web Application [Blood Donners BD] থেকে <a href="#blood_donate" style="color:red;">ব্লাড দিতে এবং নিতে পারবেন।</a> সাধারন জনগন এই Web Application থেকে উপকৃত হবেন। ধন্যবাদ!</p>
                            </div>
                    </div>
                </a>

                <a href="#hospital_ambulance_info" style="color:#797979">
                <div class="cal-md-4 px-4">
                    <div class="card-feature mb-5 mb-lg-0">
                        <div class="feature-icon">
                            <i class="fa fa-ambulance" aria-hidden="true"></i>
                        </div>
                        <h3>হাসপাতাল এবং আম্বুলেন্স এর নাম্বার খুব সহজে সংগ্রহ করতে পারবেন</h3>
                        <p>আপনারা এই Web Application [Blood Donners BD] থেকে <a href="#hospital_ambulance_info" style="color:red;" >হাসপাতাল এবং আম্বুলেন্স এর নাম্বার</a> খুব সহজে সংগ্রহ করতে পারবেন। </p>
                        </div>
                </div>
                <a href="#disease_and_medicine" style="color:#797979">


                <a href="#disease_and_medicine" style="color:#797979">
                <div class="cal-md-4 px-4">
                    <div class="card-feature mb-5 mb-lg-0">
                        <div class="feature-icon">
                            <i class="fa fa-bed" aria-hidden="true"></i>
                        </div>
                        <h3>রোগ এবং রোগ এর ঔষধ সাজেশন পাবেন।</h3>
                        <p class="">আপনারা এই Web Application [Blood Donners BD] থেকে <a href="#disease_and_medicine" style="color:red;">রোগ এবং রোগ এর ঔষধ</a> সাজেশন পাবেন। ধন্যবাদ! </p>
                    </div>
                </div>
                </a>

        </div>
        <div class="row justify-content-center pb-5">
            <a href="#fb_blood_group" style="color:#797979">
            <div class="cal-md-4 px-4">
                <div class="card-feature mb-5 mb-lg-0">
                    <div class="feature-icon">
                        <i class="fa fa-users" aria-hidden="true"></i>
                    </div>
                    <h3> ফেসবুক ব্লাড ডোনাটে গ্রুপ </h3>
                    <p> আপনারা এই Web Application [Blood Donners BD] থেকে ব্লাড দিতে এবং নিতে পারবেন। যদি কোন কারন বসতো আপনাদের প্রয়োজন মত ডিস্টিক্ট বা এরিয়ায় ব্লাড না পান, তাহলে <a href="#fb_blood_group" style="color:red;">ফেসবুক ব্লাড ডোনেট গ্রুপ</a> থেকে ব্লাড পাবেন। ধন্যবাদ!</p>
                    </div>
            </div>
            </a>

            <a href="#fire_service" style="color:#797979">
            <div class="cal-md-4 px-4">
                <div class="card-feature mb-5 mb-lg-0">
                    <div class="feature-icon">
                        <i class="fa fa-fire-extinguisher" aria-hidden="true"></i>

                    </div>
                    <h3>ফায়ার সার্ভিস নাম্বার পাবেন।</h3>
                    <p>আপনারা এই Web Application [Blood Donners BD] থেকে খুব সহজে বাংলাদেশ এর যে কোন যায়গার <a href="#fire_service" style="color:red">ফায়ার সার্ভিস নাম্বার </a> সংগ্রহ করতে পারবেন। ধন্যবাদ!</p>
                    </div>
            </div>
        </a>

        <a href="#thana" style="color:#797979">
            <div class="cal-md-4 px-4">
                <div class="card-feature mb-5 mb-lg-0">
                    <div class="feature-icon">
                        <i class="fa fa-building" aria-hidden="true"></i>
                    </div>
                    <h3>বাংলাদেশ এর সকল থানার নাম্বার পাবেন।</h3>
                    <p>আপনারা এই Web Application [Blood Donners BD] থেকে খুব সহজে বাংলাদেশ এর যে কোন জেলার <a href="#thana" style="color:red;">সকল থানার নাম্বার</a> পাবেন। ধন্যবাদ!</p>
                </div>
            </div>
        </div>
        </a>


        <div class="row justify-content-center">

        <a href="#govt_link" style="color:#797979">
            <div class="cal-md-4 px-4">
                <div class="card-feature mb-5 mb-lg-0">
                    <div class="feature-icon">
                        <i class="fa fa-globe" aria-hidden="true"></i>

                    </div>
                    <h3>বাংলাদেশ এর সকল সরকারী ওয়েব সাইট এর নাম এবং লিঙ্ক পাবেন</h3>
                    <p>আপনারা এই Web Application [Blood Donners BD] থেকে খুব সহজে বাংলাদেশ এর সকল <a href="#govt_link" style="color:red;">সরকারী ওয়েব সাইট এর নাম এবং লিঙ্ক</a> সংগ্রহ করতে পারবেন। ধন্যবাদ!</p>
                    </div>
            </div>
        </a>
        <a href="#govt_link" style="color:#797979">
            <div class="cal-md-4 px-4">
                <div class="card-feature mb-5 mb-lg-0">
                    <div class="feature-icon">
                        <i class="fa fa-handshake" aria-hidden="true"></i>
                    </div>
                    <h3>হেল্প লাইন সমূহ</h3>
                    <p>আপনারা এই Web Application [Blood Donners BD] থেকে খুব সহজে বাংলাদেশ এর সকল <a href="#help_line" style="color:red;">সরকারী হেল্প লাইন নাম্বার</a> সংগ্রহ করতে পারবেন। এবং জরুরী প্রয়োজনে কল দিয়ে সাহায্য নিতে পারবেন। ধন্যবাদ!</p>
                    </div>
            </div>
        </a>

        <a href="#govt_link" style="color:#797979">
            <div class="cal-md-4 px-4">
                <div class="card-feature mb-5 mb-lg-0">
                    <div class="feature-icon">
                        <i class="fa fa-bus" aria-hidden="true"></i>
                    </div>
                    <h3>বাস কাউন্টার নাম এবং নাম্বার</h3>
                    <p>আপনারা এই Web Application [Blood Donners BD] থেকে খুব সহজে সকল <a href="#bus_counter" style="color:red;">বাস কাউন্টার নাম এবং নাম্বার</a> সংগ্রহ করতে পারবেন। ধন্যবাদ!</p>
                    </div>
            </div>
        </a>

        </div>
        <div class="row mt-5">
            <div class="col-12 text-center">
            <a class="button  mb-2" href="#">ধন্যবাদ আপনাদের। [ব্লাড ডোনার্স বিডি-২০২০]</a>
            </div>
        </div>
        </div>
    </section>
    <!--================ Whar are benifits section End =================-->




    <!--================Hospital section Start =================-->
    <section class="mt-5" id="hospital_ambulance_info">
        <div class="container">
        <div class="section-intro text-center">
        <p class="section-intro__title">{{__('text.hospital')}}</p>
            <h2 class="primary-text">{{__('text.hospital_and_ambulance_support')}}</h2>
            <img src="{{ asset('frontend/img/home/section-style.png')}}" alt="">
        </div>
        <div class="row my-3">
            <div class="col-12 text-center">
            <a class="button mb-2 hospitalAdd" href="javaScript:void(0)" > <i class="fa fa-plus-circle pr-2"></i>
                {{__('text.add_hospital_and_ambulance_info')}}</a>
            </div>
        </div>
        @if(Session::get('hospital_message'))
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                <strong>Message : </strong> {{Session::get('hospital_message')}}
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                </div>
            @endif
            <div class="card-block m-4">
                <div class="dt-responsive table-responsive">
                    <table id="HospitalInfoTable" class="table table-striped table-bordered nowrap text-center">

                    </table>
                </div>
            </div>

        <!-- Hospital Modal -->
        <div class="modal fade" id="HospitalModal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                <form id="HospitalForm" method="post" action="{{ route('add-hospital')}}">
                        @csrf
                        <input type="hidden" name="hospital_id" id="hospital_id">
                        <div class="modal-header">
                            <h4 class="modal-title">{{__('text.add_hospital_and_ambulance_info')}}</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">

                            <div class="col-md-12 mb-3">
                                <label for="validationServer01">{{__('text.hospital_name')}}</label>
                                <input type="text" class="form-control @error('name') is-invalid @enderror" name="name" id="name" placeholder="{{__('text.enter_hospital_name')}}" value="" required>
                                <div class="valid-feedback">
                                    @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-md-12 mb-3">
                                <label for="hospital_mobile">{{__('text.hospital_contact_numnber')}}</label>
                                <input type="text" class="form-control @error('hospital_mobile') is-invalid @enderror" name="hospital_mobile" id="hospital_mobile" placeholder="{{__('text.enter_hospital_contact_number')}}" value="" >
                                <div class="valid-feedback">
                                    @error('hospital_mobile')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-md-12 mb-3">
                                <label for="ambulance_contact">{{__('text.ambulance_contact_number')}}</label>
                                <input type="text" class="form-control @error('ambulance_contact') is-invalid @enderror" name="ambulance_contact" id="ambulance_contact" placeholder="{{__('text.enter_ambulance_contact_number')}}" value="">
                                <div class="valid-feedback">
                                    @error('ambulance_contact')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-md-12 mb-3">
                                <label for="validationServer01">{{__('text.hospital_location')}}</label>
                                <textarea class="form-control @error('location') is-invalid @enderror" name="location" id="location" cols="" rows="" placeholder="{{__('text.enter_hospital_location')}}" required></textarea>
                                <div class="valid-feedback">
                                    @error('location')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-md-12 mb-3">
                                <label for="hospital_status">{{__('text.status')}}</label>
                                <select  id="hospital_status" name="hospital_status" class="col-md-12 form-control @error('status') is-invalid @enderror" required>
                                    <option value="">{{__('text.select_status')}}</option>
                                    <option value="0">{{__('text.active')}}</option>
                                    <option value="1">{{__('text.inactive')}}</option>
                                </select>
                                <div class="valid-feedback">
                                    @error('status')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-sm btn-danger waves-effect " data-dismiss="modal">Close</button>
                            <button type="reset" class="btn btn-sm btn-primary waves-effect " >Reset</button>
                            <button type="submit" class="btn btn-sm btn-success waves-effect waves-light" id="">Submit</button>
                        </div>
                </form>
                </div>
            </div>
        </div>
        {{-- Hospital modal --}}
        </div>
    </section>
    <div class="marquee_area container ">
        <marquee behavior="scroll" direction="" scrollamount="5" class="mar">
            <p>
                <i class="fa fa-quote-left" aria-hidden="true"></i>
                দৃষ্টি আকর্ষণ <i class="fa fa-quote-right" aria-hidden="true"></i>
                "হাসপাতালের নাম, কন্টাক্ট নাম্বার এবং এম্বুলেন্স নাম্বার যুক্ত করুন" হাসপাতাল এবং এম্বুলেন্স সাপোর্ট থেকে আপনারা খুব সহজেই হাসপাতালের নাম, হাসপাতালের কন্টাক্ট নাম্বার, ঐ হাসপাতালের এম্বুলেন্স নাম্বার খুব সহজেই সংগ্রহ করতে পারবেন। ধন্যবাদ ।
            </p>
        </marquee>
    </div>
    <!--================ Hospital section End =================-->

     <!--================ Fire Service section Start =================-->
     <section class="mt-5" id="fire_service">
        <div class="container">
        <div class="section-intro text-center">
        <p class="section-intro__title">{{__('text.fire_service')}}</p>
            <h2 class="primary-text">{{__('text.fire_service')}}</h2>
            <img src="{{ asset('frontend/img/home/section-style.png')}}" alt="">
        </div>

            <div class="card-block m-4">
                <div class="dt-responsive table-responsive">
                    <table id="FireServiceTable" class="table table-striped table-bordered nowrap text-center">

                    </table>
                </div>
            </div>
        </div>
    </section>
    <div class="marquee_area container ">
        <marquee behavior="scroll" direction="" scrollamount="5" class="mar">
            <p>
                <i class="fa fa-quote-left" aria-hidden="true"></i>
                দৃষ্টি আকর্ষণ <i class="fa fa-quote-right" aria-hidden="true"></i>
                আপনারা এই Web Application [Blood Donners BD] থেকে খুব সহজে বাংলাদেশ এর যে কোন যায়গার ফায়ার সার্ভিস নাম্বার সংগ্রহ করতে পারবেন। ধন্যবাদ [Blood Donners BD-2020]।
            </p>
        </marquee>
    </div>
    <!--================  Fire Service section End =================-->

     <!--================ Thana Service section Start =================-->
     <section class="mt-5" id="thana">
        <div class="container">
        <div class="section-intro text-center">
        <p class="section-intro__title">{{__('text.thana_service')}}</p>
            <h2 class="primary-text">{{__('text.thana_service')}}</h2>
            <img src="{{ asset('frontend/img/home/section-style.png')}}" alt="">
        </div>

            <div class="card-block m-4">
                <div class="dt-responsive table-responsive">
                    <table id="ThanaServiceTable" class="table table-striped table-bordered nowrap text-center">

                    </table>
                </div>
            </div>
        </div>
    </section>
    <div class="marquee_area container ">
        <marquee behavior="scroll" direction="" scrollamount="5" class="mar">
            <p>
                <i class="fa fa-quote-left" aria-hidden="true"></i>
                দৃষ্টি আকর্ষণ <i class="fa fa-quote-right" aria-hidden="true"></i>
                " ফেসবুক ব্লাড ডোনেট গ্রুপ যুক্ত করুন " এখানে আপনারা আপনাদের ফেসবুকে কোন ব্লাড ডোনার গ্রুপ এ যুক্ত থাকলে সেই গ্রুপের নাম এবং গ্রুপের লিংক এখানে যুক্ত করতে পারেন, তাহলে সাধারন জনগণ সেই গ্রুপ এ যুক্ত হতে পারবে এবং রক্ত দান ও রক্ত নিতে পারবে। ধন্যবাদ [Blood Donners BD-2020]।
            </p>
        </marquee>
    </div>
    <!--================  Thana Service section End =================-->



  <!--================Bus Counter section Start =================-->
     <section class=" mt-5" id="bus_counter">

        <div class="container">
        <div class="section-intro text-center">
        <p class="section-intro__title"> {{__('text.bus_counter')}}</p>
            <h2 class="primary-text">{{__('text.bus_counter_mobile_and_location')}}</h2>
            <img src="{{ asset('frontend/img/home/section-style.png')}}" alt="">
        </div>
        <div class="row my-3">
            <div class="col-12 text-center">
            <a class="button mb-2 CounterAdd " id="bus_counter" href="javaScript:void(0)" > <i class="fa fa-plus-circle pr-2"></i>
                {{__('text.add_bus_counter')}}</a>
            </div>
        </div>
        @if(Session::get('disease_message'))
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                <strong>Message : </strong> {{Session::get('disease_message')}}
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                </div>
            @endif
            <div class="card-block m-4">
                <div class="dt-responsive table-responsive">
                    <table id="BusCounterTable" class="table table-striped table-bordered nowrap text-center">

                    </table>
                </div>
            </div>


        <!-- BusCounter Modal -->
        <div class="modal fade " id="BusCounterModal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                <form id="BusCounterForm" method="post" action="{{ route('add-counter')}}">
                        @csrf
                        <input type="hidden" name="BusCounter_id" id="BusCounter_id">
                        <div class="modal-header">
                            <h4 class="modal-title">{{__('text.add_bus_counter')}}</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">

                            <div class="col-md-12 mb-3">
                                <label for="counter_name">{{__('text.counter_name')}}</label>
                                <input type="text" class="form-control @error('name') is-invalid @enderror" name="counter_name" id="counter_name" placeholder="{{__('text.enter_counter_name')}}" value="" required>
                                <div class="valid-feedback">
                                    @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-md-12 mb-3">
                                <label for="counter_mobile">{{__('text.counter_mobile')}}</label>
                            <input type="text" id="counter_mobile" name="counter_mobile" class="form-control @error('counter_mobile') is-invalid @enderror" placeholder="{{__('text.enter_counter_mobile_number')}}"  required >
                                <div class="valid-feedback">
                                    @error('counter_mobile')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-md-12 mb-3">
                                <label for="counter_location">{{__('text.counter_location')}}</label>
                                <textarea name="counter_location" id="counter_location" cols="10" rows="2" class="form-control @error('counter_location') is-invalid @enderror"" placeholder="{{__('text.enter_counter_location')}}" required></textarea>
                                <div class="valid-feedback">
                                    @error('counter_location')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-md-12 mb-3">
                                <label for="select_country">{{__('text.country')}}</label>
                                <select  id="select_country" name="select_country" class="col-md-12 form-control @error('select_country') is-invalid @enderror" required>
                                    <option value="">{{__('text.select_country')}}</option>
                                    <option value="bangladesh">{{__('text.bangladesh')}}</option>
                                    <option value="india">{{__('text.india')}}</option>
                                    <option value="america">{{__('text.america')}}</option>
                                </select>
                                <div class="valid-feedback">
                                    @error('select_country')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-md-12 mb-3">
                                <label for="select_status">{{__('text.status')}}</label>
                                <select  id="select_status" name="select_status" class="col-md-12 form-control @error('status') is-invalid @enderror" required>
                                    <option value="">{{__('text.select_status')}}</option>
                                    <option value="0">{{__('text.active')}}</option>
                                    <option value="1">{{__('text.inactive')}}</option>
                                </select>
                                <div class="valid-feedback">
                                    @error('select_status')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-sm btn-danger waves-effect " data-dismiss="modal">Close</button>
                            <button type="reset" class="btn btn-sm btn-primary waves-effect " >Reset</button>
                            <button type="submit" class="btn btn-sm btn-success waves-effect waves-light" id="">Submit</button>
                        </div>
                </form>
                </div>
            </div>
        </div>
        {{-- Bus Counter modal --}}

        </div>

    </section>
    <div class="marquee_area container ">
        <marquee behavior="scroll" direction="" scrollamount="5" class="mar">
            <p>

                <i class="fa fa-quote-left" aria-hidden="true"></i> দৃষ্টি আকর্ষণ <i class="fa fa-quote-right" aria-hidden="true"></i>
                যুক্ত করুন বাস কাউন্টার। এখান থেকে আপনি বাংলাদেশ এর সকল জেলার বাস কাউন্টার এর নাম এবং মোবাইল নাম্বার খুব সহজেই সংগ্রহ করতে পারবেন। ধন্যবাদ।
            </p>
        </marquee>
    </div>
    <!--================ Bus Counter section End =================-->





















     <!--================Disease and its medicine section Start =================-->
     <section class=" mt-5" id="disease_and_medicine">

        <div class="container">
        <div class="section-intro text-center">
        <p class="section-intro__title"> {{__('text.disease_and_its_medicine')}}</p>
            <h2 class="primary-text">{{__('text.disease_and_its_medicine')}}</h2>
            <img src="{{ asset('frontend/img/home/section-style.png')}}" alt="">
        </div>
        <div class="row my-3">
            <div class="col-12 text-center">
            <a class="button mb-2 DiseaseAdd " id="DiseaseMedicine" href="javaScript:void(0)" > <i class="fa fa-plus-circle pr-2"></i>
                {{__('text.add_disease_and_its_medicine')}}</a>
            </div>
        </div>
        @if(Session::get('disease_message'))
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                <strong>Message : </strong> {{Session::get('disease_message')}}
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                </div>
            @endif
            <div class="card-block m-4">
                <div class="dt-responsive table-responsive">
                    <table id="DiseaseMedicineTable" class="table table-striped table-bordered nowrap text-center">

                    </table>
                </div>
            </div>


        <!-- Disease Modal -->
        <div class="modal fade " id="DiseaseMedicineModal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                <form id="DiseaseMedicineForm" method="post" action="{{ route('add-disease')}}">
                        @csrf
                        <input type="hidden" name="Disease_id" id="Disease_id">
                        <div class="modal-header">
                            <h4 class="modal-title">{{__('text.add_disease_and_its_medicine')}}</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">

                            <div class="col-md-12 mb-3">
                                <label for="disease_name">{{__('text.disease_name')}}</label>
                                <input type="text" class="form-control @error('name') is-invalid @enderror" name="disease_name" id="disease_name" placeholder="{{__('text.enter_disease_name')}}" value="" required>
                                <div class="valid-feedback">
                                    @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-md-12 mb-3">
                                <label for="disease_medicine">{{__('text.disease_medicine')}}</label>
                                <textarea name="disease_medicine" id="disease_medicine" cols="10" rows="3" class="form-control" placeholder="{{__('text.enter_medicine_names_if_you_are_sure')}}" required></textarea>
                                <div class="valid-feedback">
                                    @error('hospital_mobile')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-md-12 mb-3">
                                <label for="dosage_and_usage_rules">{{__('text.dosage_and_usage_rules')}}</label>
                                <textarea name="dosage_and_usage_rules" id="dosage_and_usage_rules" cols="10" rows="3" class="form-control" placeholder="{{__('text.enter_dosage_and_usage_rulse')}}" required></textarea>
                                <div class="valid-feedback">
                                    @error('dosage_and_usage_rules')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-md-12 mb-3">
                                <label for="select_status">{{__('text.status')}}</label>
                                <select  id="disease_status" name="disease_status" class="col-md-12 form-control @error('status') is-invalid @enderror" required>
                                    <option value="">{{__('text.select_status')}}</option>
                                    <option value="0">{{__('text.active')}}</option>
                                    <option value="1">{{__('text.inactive')}}</option>
                                </select>
                                <div class="valid-feedback">
                                    @error('status')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-sm btn-danger waves-effect " data-dismiss="modal">Close</button>
                            <button type="reset" class="btn btn-sm btn-primary waves-effect " >Reset</button>
                            <button type="submit" class="btn btn-sm btn-success waves-effect waves-light" id="">Submit</button>
                        </div>
                </form>
                </div>
            </div>
        </div>
        {{-- Disease modal --}}

        </div>

    </section>
    <div class="marquee_area container ">
        <marquee behavior="scroll" direction="" scrollamount="5" class="mar">
            <p>

                <i class="fa fa-quote-left" aria-hidden="true"></i> সতর্কতা <i class="fa fa-quote-right" aria-hidden="true"></i>
                কোন রোগের কি ঔষুধ Blood Donners BD তে এমন সব ঔষধের কথা বলা হয়েছে, যা দিয়ে নানান রোগের চিকিৎসা সচরাচর ডাক্তাররা করে থাকেন। এইসব ঔষধ আপনারা ডাক্তারের পরামর্শ ছাড়া ব্যবহার করবেন না। যদি করেন তা আপনার নিজ দায়িত্বে করবেন এইজন্য আমাদের Blood Donners BD কোনভাবেই দায়ী থাকবে না। আমরা চাই ঔষধ নিয়ে আপনাদের জ্ঞান বাড়ুক ঔষধের কাযকারিতা সম্পর্কে জানুন এই উদ্দেশই আমাদের এই Web Application বানানো হয়েছে। কোন রোগ হলে আগে অবশ্যই ডাক্তারের সাথে পরামর্শ করুন তারপর ঔষুধ সেবন করুন।
                সাথে থাকার জন্য ধন্যবাদ , সুস্থ্য থাকুন ভাল থাকুন।
            </p>
        </marquee>
    </div>
    <!--================ Disease section End =================-->


    <!--================ Fb Blood Donate Group and its medicine section Start =================-->
    <section class="mt-5" id="fb_blood_group">
        <div class="container">
        <div class="section-intro text-center">
        <p class="section-intro__title">{{__('text.facebook_group')}}</p>
            <h2 class="primary-text">{{__('text.facebook_blood_donate_group')}}</h2>
            <img src="{{ asset('frontend/img/home/section-style.png')}}" alt="">
        </div>
        <div class="row my-3">
            <div class="col-12 text-center">
            <a class="button mb-2 fbGroupAdd" href="javaScript:void(0)" > <i class="fa fa-plus-circle pr-2"></i>
                {{__('text.add_facebook_blood_donate_group')}}</a>
            </div>
        </div>
            <div class="card-block m-4">
                <div class="dt-responsive table-responsive">
                    <table id="FBBloodGroupTable" class="table table-striped table-bordered nowrap text-center">

                    </table>
                </div>
            </div>

        <!-- Fb Blood Donate Group Modal -->
        <div class="modal fade" id="FBBloodGroupModal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                <form id="FbBloodGroupForm" method="post" action="{{ route('fb-blood-group-add')}}">
                        @csrf
                        <input type="hidden" name="FbBloodGroup_id" id="FbBloodGroup_id">
                        <div class="modal-header">
                            <h4 class="modal-title">{{__('text.add_facebook_blood_donate_group')}}</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">

                            <div class="col-md-12 mb-3">
                                <label for="group_name">{{__('text.group_name')}}</label>
                                <input type="text" class="form-control @error('group_name') is-invalid @enderror" name="group_name" id="group_name" placeholder="{{__('text.enter_group_name')}}" value="">
                                <div class="valid-feedback">
                                    @error('group_name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-md-12 mb-3">
                                <label for="blood_group_link">{{__('text.group_link')}}</label>
                                <textarea name="blood_group_link" id="blood_group_link" cols="10" rows="3" placeholder="{{__('text.enter_group_link')}}" class="form-control"></textarea>
                                <div class="valid-feedback">
                                    @error('blood_group_link')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-md-12 mb-3">
                                <label for="blood_group_status"> {{__('text.status')}}</label>
                                <select  id="blood_group_status" name="blood_group_status" class="col-md-12 form-control @error('blood_group_status') is-invalid @enderror">
                                    <option value="">{{__('text.select_status')}}</option>
                                    <option value="0">{{__('text.active')}}</option>
                                    <option value="1">{{__('text.inactive')}}</option>
                                </select>
                                <div class="valid-feedback">
                                    @error('blood_group_status')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-sm btn-danger waves-effect " data-dismiss="modal">Close</button>
                            <button type="reset" class="btn btn-sm btn-primary waves-effect " >Reset</button>
                            <button type="submit" class="btn btn-sm btn-success">Submit</button>
                        </div>
                </form>
                </div>
            </div>
        </div>
        {{--  Fb Blood Donate Group modal --}}
        </div>
    </section>
    <div class="marquee_area container ">
        <marquee behavior="scroll" direction="" scrollamount="5" class="mar">
            <p>
                <i class="fa fa-quote-left" aria-hidden="true"></i>
                দৃষ্টি আকর্ষণ <i class="fa fa-quote-right" aria-hidden="true"></i>
                " ফেসবুক ব্লাড ডোনেট গ্রুপ যুক্ত করুন " এখানে আপনারা আপনাদের ফেসবুকে কোন ব্লাড ডোনার গ্রুপ এ যুক্ত থাকলে সেই গ্রুপের নাম এবং গ্রুপের লিংক এখানে যুক্ত করতে পারেন, তাহলে সাধারন জনগণ সেই গ্রুপ এ যুক্ত হতে পারবে এবং রক্ত দান ও রক্ত নিতে পারবে। ধন্যবাদ [Blood Donners BD-2020]।
            </p>
        </marquee>
    </div>
    <!--================  Fb Blood Donate Group section End =================-->



    <!--================ Gov't Website section Start =================-->
    <section class="mt-5" id="govt_link">
        <div class="container">
        <div class="section-intro text-center">
        <p class="section-intro__title">{{__('text.govt_website')}}</p>
            <h2 class="primary-text">{{__('text.govt_website')}}</h2>
            <img src="{{ asset('frontend/img/home/section-style.png')}}" alt="">
        </div>

            <div class="card-block m-4">
                <div class="dt-responsive table-responsive">
                    <table id="GovtWebsiteTable" class="table table-striped table-bordered nowrap text-center">

                    </table>
                </div>
            </div>
        </div>
    </section>
    <div class="marquee_area container ">
        <marquee behavior="scroll" direction="" scrollamount="5" class="mar">
            <p>
                <i class="fa fa-quote-left" aria-hidden="true"></i>
                দৃষ্টি আকর্ষণ <i class="fa fa-quote-right" aria-hidden="true"></i>
                আপনারা এই Web Application [Blood Donners BD] থেকে খুব সহজে বাংলাদেশ এর সকল সরকারী ওয়েব সাইট এর নাম এবং লিঙ্ক সংগ্রহ করতে পারবেন। ধন্যবাদ [Blood Donners BD-2020]।
            </p>
        </marquee>
    </div>
    <!--================  Gov't Website Service section End =================-->




    <!--================ Help line Number Group section Start =================-->
        <section class="section-margin" id="help_line">
            <div class="container">
            <div class="section-intro text-center">
            <p class="section-intro__title">{{__('text.help_line')}}</p>
                <h2 class="primary-text"> {{__('text.help_lines')}}</h2>
                <img src="{{ asset('frontend/img/home/section-style.png')}}" alt="">
            </div>
            <div class="row my-3">
                <div class="col-md-12 mb-3">
                    <ul class="clockdiv text-center help_line" id="clockdiv">
                        <li class="clockdiv-single clockdiv-day " style="width: 155px;
                        height: 155px;">
                        <h1 class="">999</h1>
                        <span class="text-bold" style="color:blue;">জরুরী সেবা</span>
                        </li>
                        <li class="clockdiv-single clockdiv-hour"style="width: 155px;
                        height: 155px;">
                        <h1 class="hours">333</h1>
                        <span class="text-bold" style="color:blue;">ডিজিটাল সেবা</span>
                        </li>
                        <li class="clockdiv-single clockdiv-minute" style="width: 155px;
                        height: 155px;">
                        <h1 class="minutes">16123</h1>
                        <span class=" text-bold" style="color:blue;">কৃষি সেবা</span>
                        </li>
                        <li class="clockdiv-single clockdiv-hour" style="width: 155px;
                        height: 155px;">
                            <h1 class="">16256</h1>
                            <span class=" text-bold" style="color:blue;">ইউনিয়ন পরিষদ সেবা</span></span>
                        </li>
                        <li class="clockdiv-single clockdiv-day" style="width: 155px;
                        height: 155px;">
                            <h1 class="hours">106</h1>
                            <span class=" text-bold" style="color:blue;">দুর্নীতি দমন কমিশন</span>
                        </li>


                    </ul>
                </div>
                <div class="col-md-12 mb-3">
                    <ul class="clockdiv text-center help_line" id="clockdiv">

                        <li class="clockdiv-single clockdiv-minute" style="width: 155px;
                        height: 155px;">
                            <h1 class="minutes">16402</h1>
                            <span class=" text-bold" style="color:blue;">বি.টি.সি.এল</span>
                        </li>
                        <li class="clockdiv-single clockdiv-hour" style="width: 155px;
                        height: 155px;">
                            <h1 class="hours">16263</h1>
                            <span class="text-bold" style="color:blue;">স্বাস্থ্য বাতায়ন</span>
                        </li>
                        <li class="clockdiv-single clockdiv-hour" style="width: 155px;
                        height: 155px;">
                            <h1 class="minutes">16162</h1>
                            <span class="text-bold" style="color:blue;">ঢাকা ওয়াসা</span>
                        </li>
                        <li class="clockdiv-single clockdiv-minute" style="width: 155px;
                        height: 155px;">
                            <h1 class="minutes">100</h1>
                            <span class=" text-bold" style="color:blue;">বি.আর.টি.সি</span>
                        </li>

                    </ul>
                </div>
                <div class="col-md-12 mt-2">
                    <ul class="clockdiv text-center help_line" id="clockdiv">
                        <li class="clockdiv-single clockdiv-day" style="width: 155px;
                        height: 155px;">
                            <h1 class="minutes">10941</h1>
                            <span class=" text-bold" style="color:blue;">দুর্যোগ আগাম বার্তা</span>
                        </li>
                        <li class="clockdiv-single clockdiv-hour" style="width: 155px;
                        height: 155px;">
                            <h1 class="minutes">10921</h1>
                            <span class=" text-bold" style="color:blue;">নারী ও শিশু নির্যাতন</span>
                        </li>
                        <li class="clockdiv-single clockdiv-day" style="width: 155px;
                        height: 155px;">
                            <h1 class="minutes">16430</h1>
                            <span class="text-bold" style="color:blue;">সরকারি আইন সেবা</span>
                        </li>
                    </ul>
                </div>
                <div class="col-md-12 mt-2">
                    <ul class="clockdiv text-center help_line" id="clockdiv">

                        <li class="clockdiv-single clockdiv-minute" style="width: 155px;
                        height: 155px;">
                            <h1 class="minutes">10922</h1>
                            <span class=" text-bold" style="color:blue;">মহিলা সংস্থা/তথ্য আপা</span>
                        </li>
                        <li class="clockdiv-single clockdiv-minute" style="width: 155px;
                        height: 155px;">
                            <h1 class="minutes">1098</h1>
                            <span class=" text-bold" style="color:blue;">চাইল্ড হেল্প লাইন</span>
                        </li>
                    </ul>
                </div>
                <div class="col-md-12 mt-2">
                    <ul class="clockdiv text-center help_line" id="clockdiv">
                        <li class="clockdiv-single clockdiv-day" style="width: 155px;
                        height: 155px;">
                            <h1 class="minutes">105</h1>
                            <span class=" text-bold"style="color:blue;">জাতিয় পরিচয় পত্র</span>
                        </li>
                    </ul>
                </div>
            </div>
        <p class="h4 primary-text2 mb-2 text-center">{{__('text.help_lines')}}</p>
            </div>
        </section>
    <!--================ Help line Number Group section End =================-->


    <!--================ Top 5 Donners section Start =================-->
    <section class="section-margin mb-5 pb-5" id="top5">
        <div class="container">
        <div class="section-intro text-center pb-98px">
            <p class="section-intro__title"> {{__('text.welcome_to_blood_donners_bd')}}</p>
            <h2 class="primary-text"> {{__('text.honarable_blood_donner_helper_people')}}</h2>
            <img src="{{ asset('frontend/img/home/section-style.png')}}" alt="">
        </div>

        <div class="row">
            <div class="col-xl-10 offset-xl-1">
            <div class="scheduleTab"  id="sujon_sorkar">
                <ul class="nav nav-tabs">
                <li class="nav-item text-center">
                    <a data-toggle="tab" class="active" href="#top5">
                    <h4>TOP 5 PEPOLE</h4>
                    <p>Blood Donner BD-2020</p>
                    </a>
                </li>
                <li class="nav-item text-center">
                    <a class="" data-toggle="tab" href="#top10">
                        <h4>TOP 10 PEPOLE</h4>
                        <p>Blood Donner BD-2020</p>
                    </a>
                </li>
                <li class="nav-item text-center">
                    <a data-toggle="tab" href="#top15">
                        <h4>TOP 15 PEPOLE</h4>
                        <p>Blood Donner BD-2020</p>
                    </a>
                </li>

                </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                <div id="top5" class="tab-pane active">

                    <div class="schedule-card">
                    <div class="row no-gutters">
                        <div class="col-md-3">
                        <div class="card-identity">
                            <img src="{{ asset('frontend/img/testimonial/sujonkumer.png')}}" alt="Sujon kumer">
                            <h3><i class="fa fa-quote-left" aria-hidden="true"></i>
                                Sujon Kumer <i class="fa fa-quote-right" aria-hidden="true"></i>
                            </h3>
                            <p>FullStack Web Developer/Blood Donner</p>
                        </div>
                        </div>
                        <div class="col-md-9 align-self-center">
                        <div class="schedule-content">
                            <a class="schedule-title" href="#">
                            <h3><i class="fa fa-quote-left" aria-hidden="true"></i>
                                Sujon Kumer <i class="fa fa-quote-right" aria-hidden="true"></i>
                            </h3>
                            </a>
                            <p>
                                <ul>
                                    <li><b>Contact:</b> +8801785408231</li>
                                    <li><b>Blood Group:</b> O+</li>
                                    <li><b>City:</b> Dhaka / Natore</li>
                                    <li><b>FB-Blood Group:</b><a href="https://www.facebook.com/groups/284527281972211/?ref=share" target="_blank" title="FB-Blood Group"> আশার আলো সমাজকল্যান ফাউন্ডেশন </a></li>
                                </ul>
                                আমি সুজন কুমার। আমি একজন স্বেচ্ছায় রক্ত দাতা। এ যাবত ৯ তম বার ব্লাড দান করেছি। ঢাকা বা নাটোরে ব্লাড প্রয়োজন হলে আমাকে জানাবেন, আমি সর্বচ্চো চেষ্টা করবো। আমি একটা  <a href="https://www.facebook.com/groups/284527281972211/?ref=share" target="_blank" title="FB-Blood Donate Group" >FB Blood Donate Group আশার আলো সমাজকল্যান ফাউন্ডেশন</a> এ যুক্ত আছি। এখান থেকে আপনি ব্লাড পাবেন। এবং <i class="fa fa-quote-left" aria-hidden="true"></i> আমি এই Web Application [Blood Donners-BD] এর CEO এবং Developer । নিজ উদ্যোগ এ এই Web Application Development করেছি <i class="fa fa-quote-right" aria-hidden="true"></i>। ধন্যবাদ আপনাদের।
                            </p>
                        </div>
                        </div>
                    </div>
                    </div>

                    <div class="schedule-card">
                    <div class="row no-gutters">
                        <div class="col-md-3">
                        <div class="card-identity">
                            <img src="{{ asset('frontend/img/testimonial/robin.jpg')}}" alt="Profile Image">
                            <h3>Al Same Jaman Robin</h3>
                            <p>*** Blood Donner ***</p>
                        </div>
                        </div>
                        <div class="col-md-9 align-self-center">
                        <div class="schedule-content">
                            <a class="schedule-title" href="#">
                            <h3>Al Same Jaman Robin</h3>
                            </a>
                            <p>
                                <ul>
                                    <li><b>Contact:</b> +8801766922483</li>
                                    <li><b>Blood Group:</b> O+</li>
                                    <li><b>City:</b> Dhaka</li>
                                    <li><b>FB-Blood Group:</b><a href="https://www.facebook.com/groups/284527281972211/?ref=share" target="_blank" title="FB-Blood Group"> আশার আলো সমাজকল্যান ফাউন্ডেশন </a></li>
                                </ul>
                                আমি আল ছামি জামান রবিন । আমি একজন স্বেচ্ছায় রক্ত দাতা। এ যাবত ১৪ তম বার ব্লাড দান করেছি। ঢাকায় ব্লাড প্রয়োজন হলে আমাকে জানাবেন, আমি সর্বচ্চো চেষ্টা করবো। আমি একটা  <a href="https://www.facebook.com/groups/284527281972211/?ref=share" target="_blank" title="FB-Blood Donate Group" >FB Blood Donate Group আশার আলো সমাজকল্যান ফাউন্ডেশন</a> এ যুক্ত আছি। এখান থেকে আপনি ব্লাড পাবেন। ধন্যবাদ ।
                            </p>
                        </div>
                        </div>
                    </div>
                    </div>

                    <div class="schedule-card">
                        <div class="row no-gutters">
                        <div class="col-md-3">
                            <div class="card-identity">
                            <img src="{{ asset('frontend/img/testimonial/solaiman.jpg')}}" alt="Profile Image">
                            <h3>Solaiman</h3>
                            <p>*** Blood Donner ***</p>
                            </div>
                        </div>
                        <div class="col-md-9 align-self-center">
                            <div class="schedule-content">
                            <a class="schedule-title" href="#">
                                <h3>Solaiman</h3>
                            </a>
                            <p>
                                <ul>
                                    <li><b>Contact:</b> +8801986389475</li>
                                    <li><b>Blood Group:</b> B+</li>
                                    <li><b>City:</b> Dhaka</li>
                                    <li><b>FB-Blood Group:</b><a href="https://www.facebook.com/groups/284527281972211/?ref=share" target="_blank" title="FB-Blood Group"> আশার আলো সমাজকল্যান ফাউন্ডেশন </a></li>
                                </ul>
                                আমি সালমান । আমি একজন স্বেচ্ছায় রক্ত দাতা। এ যাবত ৮ম তম বার ব্লাড দান করেছি। ঢাকায় ব্লাড প্রয়োজন হলে আমাকে জানাবেন, আমি সর্বচ্চো চেষ্টা করবো।  আমি একটা  <a href="https://www.facebook.com/groups/284527281972211/?ref=share" target="_blank" title="FB-Blood Donate Group" >FB Blood Donate Group আশার আলো সমাজকল্যান ফাউন্ডেশন</a> এ যুক্ত আছি। এখান থেকে আপনি ব্লাড পাবেন। ধন্যবাদ ।
                            </p>
                            </div>
                        </div>
                        </div>
                    </div>

                    <div class="schedule-card">
                        <div class="row no-gutters">
                        <div class="col-md-3">
                            <div class="card-identity">
                            <img src="{{ asset('frontend/img/testimonial/hridoydas.jpg')}}" alt="">
                            <h3>Hridoy Das</h3>
                            <p>*** Blood Donner ***</p>
                            </div>
                        </div>
                        <div class="col-md-9 align-self-center">
                            <div class="schedule-content">
                            <a class="schedule-title" href="#">
                                <h3>Hridoy Das</h3>
                            </a>
                            <p>
                                <ul>
                                    <li><b>Contact:</b> +8801303221232</li>
                                    <li><b>Blood Group:</b> O+ </li>
                                    <li><b>City:</b> Dhaka/Feni</li>
                                    <li><b>FB-Blood Group:</b><a href="https://web.facebook.com/fenihelpassociation" target="_blank" title="FB-Blood Group"> Progress help aid foundation Bangladesh </a></li>
                                </ul>
                                আমি হৃদয় দাস । আমি একজন স্বেচ্ছায় রক্ত দাতা। এ যাবত 22 তম বার ব্লাড দান করেছি। ঢাকায় বা গাজিপুর / ফেনী ব্লাড প্রয়োজন হলে আমাকে জানাবেন, আমি সর্বচ্চো চেষ্টা করবো।
                                আমি একটা  <a href="https://web.facebook.com/fenihelpassociation" target="_blank" title="FB-Blood Donate Group" >FB Blood Donate Group: Progress help aid foundation Bangladesh</a> এ যুক্ত আছি। এখান থেকে আপনি ব্লাড পাবেন। ধন্যবাদ ।
                            </p>
                            </div>
                        </div>
                        </div>
                    </div>

                    <div class="schedule-card">
                        <div class="row no-gutters">
                        <div class="col-md-3">
                            <div class="card-identity">
                            <img src="{{ asset('frontend/img/testimonial/mamdud hossain.jpg')}}" alt="Sujon kumer">
                            <h3><i class="fa fa-quote-left" aria-hidden="true"></i>
                                Mamdud Hossain<i class="fa fa-quote-right" aria-hidden="true"></i>
                            </h3>
                            <p>*** Blood Donner *</p>
                            </div>
                        </div>
                        <div class="col-md-9 align-self-center">
                            <div class="schedule-content">
                            <a class="schedule-title" href="#">
                                <h3><i class="fa fa-quote-left" aria-hidden="true"></i>
                                    Mamdud Hossain<i class="fa fa-quote-right" aria-hidden="true"></i>
                            </h3>
                            </a>
                            <p>
                                <ul>
                                    <li><b>Contact:</b> +8801724558370</li>
                                    <li><b>Blood Group:</b> B+</li>
                                    <li><b>City:</b>Natore / Rajshahi</li>
                                    <li><b>FB-Blood Group:</b><a href="https://www.facebook.com/groups/284527281972211/?ref=share" target="_blank" title="FB-Blood Group"> সুকাশ ব্লাডব্যাংক </a></li>
                                </ul>
                                Mamdud Hossain। আমি একজন স্বেচ্ছায় রক্ত দাতা। এ যাবত ১ তম বার ব্লাড দান করেছি। নাটোর বা রাজশাহী ব্লাড প্রয়োজন হলে আমাকে জানাবেন, আমি সর্বচ্চো চেষ্টা করবো। আমি একটা  <a href="https://web.facebook.com/profile.php?id=100044295352122" target="_blank" title="FB-Blood Donate Group" >FB Blood Donate Group সুকাশ ব্লাডব্যাংক</a> এ যুক্ত আছি। এখান থেকে আপনি ব্লাড পাবেন। । ধন্যবাদ আপনাদের।
                            </p>
                            </div>
                        </div>
                        </div>
                    </div>

                </div>
                <div id="top10" class="tab-pane">

                    <div class="schedule-card">
                    <div class="row no-gutters">
                        <div class="col-md-3">
                        <div class="card-identity">
                            <img src="{{ asset('frontend/img/testimonial/sujonkumer.png')}}" alt="">
                            <h3>sujonkumer</h3>
                            <p>Developer</p>
                        </div>
                        </div>
                        <div class="col-md-9 align-self-center">
                        <div class="schedule-content">
                            <a class="schedule-title" href="#">
                            <h3>Previous Year achivement</h3>
                            </a>
                            <p>And wherein Beginning of you cattle fly had was deep wherein darkness behold male called evening gathering moving bring fifth days he lights dry cattle you open seas midst let and in wherein beginning </p>
                        </div>
                        </div>
                    </div>
                    </div>

                    <div class="schedule-card">
                    <div class="row no-gutters">
                        <div class="col-md-3">
                        <div class="card-identity">
                            <img src="{{asset('frontend/img/testimonial/sujonkumer.png')}}" alt="">
                            <h3>Sujon Kumer</h3>
                            <p>FullStack Web Developer/Blood Donner</p>
                        </div>
                        </div>
                        <div class="col-md-9 align-self-center">
                        <div class="schedule-content">
                            <a class="schedule-title" href="#">
                            <h3>Previous Year achivement</h3>
                            </a>
                            <p>And wherein Beginning of you cattle fly had was deep wherein darkness behold male called evening gathering moving bring fifth days he lights dry cattle you open seas midst let and in wherein beginning </p>
                        </div>
                        </div>
                    </div>
                    </div>

                    <div class="schedule-card">
                    <div class="row no-gutters">
                        <div class="col-md-3">
                        <div class="card-identity">
                            <img src="{{ asset('frontend/img/testimonial/sujonkumer.png')}}" alt="">
                            <h3>Sujon Kumer</h3>
                            <p>Developer</p>
                        </div>
                        </div>
                        <div class="col-md-9 align-self-center">
                        <div class="schedule-content">
                            <a class="schedule-title" href="#">
                            <h3>Previous Year achivement</h3>
                            </a>
                            <p>And wherein Beginning of you cattle fly had was deep wherein darkness behold male called evening gathering moving bring fifth days he lights dry cattle you open seas midst let and in wherein beginning </p>
                        </div>
                        </div>
                    </div>
                    </div>

                </div>
                <div id="top15" class="tab-pane">
                    <div class="schedule-card">
                    <div class="row no-gutters">
                        <div class="col-md-3">
                        <div class="card-identity">
                            <img src="{{asset('frontend/img/testimonial/sujonkumer.png')}}" alt="">
                            <h3>Sujon Kumer</h3>
                            <p>Developer</p>
                        </div>
                        </div>
                        <div class="col-md-9 align-self-center">
                        <div class="schedule-content">
                            <a class="schedule-title" href="#">
                            <h3>Previous Year achivement</h3>
                            </a>
                            <p>And wherein Beginning of you cattle fly had was deep wherein darkness behold male called evening gathering moving bring fifth days he lights dry cattle you open seas midst let and in wherein beginning </p>
                        </div>
                        </div>
                    </div>
                    </div>
                    <div class="schedule-card">
                        <div class="row no-gutters">
                        <div class="col-md-3">
                            <div class="card-identity">
                            <img src="{{ asset('frontend/img/testimonial/sujonkumer.png')}}" alt="Sujon kumer">
                            <h3>Sujon Kumer</h3>
                            <p>FullStack Web Developer/Blood Donner</p>
                            </div>
                        </div>
                        <div class="col-md-9 align-self-center">
                            <div class="schedule-content">
                            <a class="schedule-title" href="#">
                                <h3>Previous Year achivement</h3>
                            </a>
                            <p>And wherein Beginning of you cattle fly had was deep wherein darkness behold male called evening gathering moving bring fifth days he lights dry cattle you open seas midst let and in wherein beginning </p>
                            </div>
                        </div>
                        </div>
                    </div>

                    <div class="schedule-card">
                    <div class="row no-gutters">
                        <div class="col-md-3">
                        <div class="card-identity">
                            <img src="{{ asset('frontend/img/testimonial/sujonkumer.png')}}" alt="">
                            <h3>Sujon Kumer</h3>
                            <p>Developer</p>
                        </div>
                        </div>
                        <div class="col-md-9 align-self-center">
                        <div class="schedule-content">
                            <a class="schedule-title" href="#">
                            <h3>Previous Year achivement</h3>
                            </a>
                            <p>And wherein Beginning of you cattle fly had was deep wherein darkness behold male called evening gathering moving bring fifth days he lights dry cattle you open seas midst let and in wherein beginning </p>
                        </div>
                        </div>
                    </div>
                    </div>

                    <div class="schedule-card">
                    <div class="row no-gutters">
                        <div class="col-md-3">
                        <div class="card-identity">
                            <img src="{{ asset('frontend/img/testimonial/sujonkumer.png')}}" alt="">
                            <h3>sujonkumer.png</h3>
                            <p>Developer</p>
                        </div>
                        </div>
                        <div class="col-md-9 align-self-center">
                        <div class="schedule-content">
                            <a class="schedule-title" href="#">
                            <h3>Previous Year achivement</h3>
                            </a>
                            <p>And wherein Beginning of you cattle fly had was deep wherein darkness behold male called evening gathering moving bring fifth days he lights dry cattle you open seas midst let and in wherein beginning </p>
                        </div>
                        </div>
                    </div>
                    </div>
                </div>
                <div id="day4" class="tab-pane">
                    <div class="schedule-card">
                    <div class="row no-gutters">
                        <div class="col-md-3">
                        <div class="card-identity">
                            <img src="{{ asset('frontend/img/testimonial/sujonkumer.png')}}" alt="">
                            <h3>Sujon Kumer</h3>
                            <p>Developer</p>
                        </div>
                        </div>
                        <div class="col-md-9 align-self-center">
                        <div class="schedule-content">
                            <a class="schedule-title" href="#">
                            <h3>Previous Year achivement</h3>
                            </a>
                            <p>And wherein Beginning of you cattle fly had was deep wherein darkness behold male called evening gathering moving bring fifth days he lights dry cattle you open seas midst let and in wherein beginning </p>
                        </div>
                        </div>
                    </div>
                    </div>

                    <div class="schedule-card">
                    <div class="row no-gutters">
                        <div class="col-md-3">
                        <div class="card-identity">
                            <img src="{{ asset('frontend/img/testimonial/sujonkumer.png')}}" alt="">
                            <h3>Sujon Kumer</h3>
                            <p>Developer</p>
                        </div>
                        </div>
                        <div class="col-md-9 align-self-center">
                        <div class="schedule-content">
                            <a class="schedule-title" href="#">
                            <h3>Previous Year achivement</h3>
                            </a>
                            <p>And wherein Beginning of you cattle fly had was deep wherein darkness behold male called evening gathering moving bring fifth days he lights dry cattle you open seas midst let and in wherein beginning </p>
                        </div>
                        </div>
                    </div>
                    </div>

                    <div class="schedule-card">
                    <div class="row no-gutters">
                        <div class="col-md-3">
                        <div class="card-identity">
                            <img src="{{ asset('frontend/img/testimonial/sujonkumer.png')}}" alt="">
                            <h3>Sujon Kumer</h3>
                            <p>Developer</p>
                        </div>
                        </div>
                        <div class="col-md-9 align-self-center">
                        <div class="schedule-content">
                            <a class="schedule-title" href="#">
                            <h3>Previous Year achivement</h3>
                            </a>
                            <p>And wherein Beginning of you cattle fly had was deep wherein darkness behold male called evening gathering moving bring fifth days he lights dry cattle you open seas midst let and in wherein beginning </p>
                        </div>
                        </div>
                    </div>
                    </div>

                    <div class="schedule-card">
                    <div class="row no-gutters">
                        <div class="col-md-3">
                        <div class="card-identity">
                            <img src="{{ asset('frontend/img/testimonial/sujonkumer.png')}}" alt="">
                            <h3>Sujon Kumer</h3>
                            <p>Developer</p>
                        </div>
                        </div>
                        <div class="col-md-9 align-self-center">
                        <div class="schedule-content">
                            <a class="schedule-title" href="#">
                            <h3>Previous Year achivement</h3>
                            </a>
                            <p>And wherein Beginning of you cattle fly had was deep wherein darkness behold male called evening gathering moving bring fifth days he lights dry cattle you open seas midst let and in wherein beginning </p>
                        </div>
                        </div>
                    </div>
                    </div>
                </div>
                </div>
            </div>
            </div>
        </div>
        </div>
    </section>
    <!--================ Top 5 Donners section End =================-->



    <!--================ picture_of_national_pepole section Start =================-->
    <section class="speaker-bg section-padding mt-5 ">
        <div class="container">
        <div class="section-intro section-intro-white text-center pb-98px">
            <p class="section-intro__title">{{__('text.blood_donners_bd')}}</p>
            <h2 class="primary-text">{{__('text.picture_of_national_pepole')}}</h2>
            <img src="{{ asset('frontend/img/home/section-style.png')}}" alt="">
        </div>
        <div class="container-fluid">
            <div class="row py-3">
                <div class="col-lg-2 "></div>
                <div class="col-lg-8 col-lg-offset-4">
                    <div class="card-speaker" style="height:82%">
                        <img class="card-img rounded-0" src="{{asset('frontend/img/home/1200px-Flag_of_Bangladesh_(1971).svg.png')}}" alt="Image" style="height: 380px;">
                        <div class="">
                        <h4>বাংলাদেশ</h4>
                        <p> বাংলাদেশ এর মানচিত্র </p>
                        </div>
                        <div class="speaker-overlay">
                        <ul class="speaker-social">
                            <li><a href="#">বাংলাদেশ এর মানচিত্র</a></li>
                        </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 "></div>

            </div>
        </div>

        <div class="row">
                <div class="col-lg-4 col-sm-6 mb-4 mb-lg-0">
                    <div class="card-speaker">
                    <img class="card-img rounded-0" src="{{ asset('frontend/img/home/mujib.jpg')}}" alt="" style="height:379px;">
                    <div class="speaker-footer">
                        <h4> শেখ মজিবুর রহমান </h4>
                        <p>বাংলাদেশ এর জাতির জনক</p>
                    </div>
                    <div class="speaker-overlay">
                        <ul class="speaker-social">
                        <li><a href="#">শেখ মজিবুর রহমান</a></li>
                        </ul>
                    </div>
                    </div>
                </div>

            <div class=" col-lg-4 col-sm-6 mb-4 mb-lg-0">
                <div class="card-speaker">
                    <img class="card-img rounded-0" src="{{ asset('frontend/img/home/shaik-hasina.jpg')}}" alt="Image" style="height: 380px;">
                    <div class="speaker-footer">
                    <h4>শেখ হাসিনা</h4>
                    <p>বাংলাদেশ এর জাতির মা</p>
                    </div>
                    <div class="speaker-overlay">
                    <ul class="speaker-social">
                        <li><a href="#"> শেখ হাসিনা</a></li>
                    </ul>
                    </div>
                </div>
            </div>

            <div class=" col-lg-4 col-sm-6 mb-4 mb-lg-0">
                <div class="card-speaker">
                    <img class="card-img rounded-0" src="{{ asset('frontend/img/home/sajib.jpg')}}" alt="Image" style="height: 380px;">
                    <div class="speaker-footer">
                    <h4> সজিব ওয়াজেদ জয় </h4>
                    <p> ডিজিটাল বাংলাদেশ এর উপদেষ্টা</p>
                    </div>
                    <div class="speaker-overlay">
                    <ul class="speaker-social">
                        <li><a href="#">  সজিব ওয়াজেদ জয় </a></li>
                    </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="container-fluid">
            <div class="row py-3">
                <div class="col-lg-3 "></div>
                <div class="col-lg-6 col-lg-offset-3">
                    <div class="card-speaker" style="height:100%">
                        <img class="card-img rounded-0" src="{{asset('frontend/img/home/polak.jpg')}}" alt="Image" style="height: 380px;">
                        <div class="speaker-footer">
                        <h4>জুনায়েদ আহম্মদে পলক</h4>
                        <p>ডিজিটাল বাংলাদেশ এর কারিগর ICT প্রতিমন্ত্রী</p>
                        </div>
                        <div class="speaker-overlay">
                        <ul class="speaker-social">
                            <li><a href="#">জুনায়েদ আহম্মদে পলক</a></li>
                        </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 "></div>

            </div>
        </div>
        </div>
    </section>
    <!--================picture_of_national_pepole section End =================-->


    <!--================honarable_blood_donners_gallery section Start =================-->
    <section class=" section-padding mt-5" id="gallery">
        <div class="container">
        <div class="section-intro section-intro-white text-center pb-98px">
            <p class="section-intro__title"  style="color:#3B1D82;" >{{__('text.blood_donners_bd')}}</p>
            <h2 class="primary-text" style="color:#3B1D82;">{{__('text.honarable_blood_donners_gallery')}}</h2>
            <img src="{{ asset('frontend/img/home/section-style.png')}}" alt="">
        </div>

        <div class="row">
            <div class="col-lg-4 col-sm-6 mb-lg-0">
                <div class="card-speaker">
                <img class="card-img rounded-0" src="{{ asset('frontend/img/home/Sujon kumer.png')}}" alt="" style="height:379px;">
                <div class="speaker-footer">
                    <h4>Sujon Kumer</h4>
                    <p>FullStack Web Developer / Blood Donner</p>
                </div>
                <div class="speaker-overlay">
                    <ul class="speaker-social">
                    <li><a href="https://web.facebook.com/sujonsorkar01/" target="_blank"><i class="ti-facebook"></i></a></li>
                    <li><a href="https://twitter.com/SujonSorkar01?fbclid=IwAR212RkDgwG2XIr_Ov1yfeSy1ynjN-fCjukGUA_0mx8yYwFk8_KNljaxtqE" target="_blank"><i class="ti-twitter-alt"></i></a></li>
                    <li><a href="https://www.instagram.com/sujon__sorkar/?fbclid=IwAR3VpZnnwkq_lNrJTZkn4B8ngAK9OfM9C29Vnnv3aj8GOnO_oPfwKbE5qXs" target="_blank"><i class="ti-instagram"></i></a></li>
                    </ul>
                </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 mb-4 mb-lg-0">
            <div class="card-speaker">
                <img class="card-img rounded-0" src="{{ asset('frontend/img/home/hridoydas.jpg')}}" alt="Image" style="height: 380px;">
                <div class="speaker-footer">
                <h4>Hridoy Das</h4>
                <p>Civil Eng / Blood Donner</p>
                </div>
                <div class="speaker-overlay">
                <ul class="speaker-social">
                    <li><a href="https://web.facebook.com/riday.das.359" target="_blank" ><i class="ti-facebook"></i></a></li>
                    <li><a href="#"><i class="ti-twitter-alt"></i></a></li>
                    <li><a href="#"><i class="ti-instagram"></i></a></li>
                    <li><a href="#"><i class="ti-skype"></i></a></li>
                </ul>
                </div>
            </div>
            </div>
            <div class="col-lg-4 col-sm-6 mb-4 mb-lg-0">
            <div class="card-speaker">
                <img class="card-img rounded-0" src="{{asset('frontend/img/home/robin.jpg')}}" alt="Image" style="height: 380px;">
                <div class="speaker-footer">
                <h4>Al Same Jaman Robin</h4>
                <p>Blood Donner</p>
                </div>
                <div class="speaker-overlay">
                <ul class="speaker-social">
                    <li><a href="https://web.facebook.com/alsamejaman.robin/" target="_blank"><i class="ti-facebook"></i></a></li>
                    <li><a href="#"><i class="ti-twitter-alt"></i></a></li>
                    <li><a href="#"><i class="ti-instagram"></i></a></li>
                    <li><a href="#"><i class="ti-skype"></i></a></li>
                </ul>
                </div>
            </div>
            </div>
        </div>
        </div>
    </section>
    <!--================honarable_blood_donners_gallery section End =================-->



    <!--================video section Start =================-->
    <section class=" section-padding" id="video">
        <div class="container">
        <div class="section-intro section-intro-white text-center mb-5">
            <p class="section-intro__title"  style="color:#3B1D82;" >{{__('text.about_website_video')}}</p>
            <h2 class="primary-text" style="color:#3B1D82;">{{__('text.how_to_use_blood_donate_website')}}</h2>
            <img src="{{ asset('frontend/img/home/section-style.png')}}" alt="">
        </div>

        <div class="row ">
            <div class="col-lg-12 col-sm-12 text-center ">
                <video type="video/mp4"  src="{{asset('public/frontend/video/blood_donners_bd.mp4')}}" controls  >
                </div>
            </div>
        </div>
        </div>
    </section>
    <!--================video section End =================-->






    <!-- Add Modal Registration -->
    <div class="modal fade " id="addNewRegisterModal" tabindex="-1" role="dialog" >
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <form id="registerForm" method="post" action="{{ route('register') }}" enctype="multipart/form-data" autocomplete="">
                    @csrf
                    <div class="modal-header">
                        <h4 class="modal-title">  {{ __('text.add_new_blood_donner_registration')}} </h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="form-row">
                            <div class="col-md-6 mb-3">
                            <label for="name">{{ __('text.full_name')}} </label>
                            <input type="text" class="form-control @error('name') is-invalid @enderror" id="name" placeholder=" {{ __('text.enter_your_full_name')}} " name="name" value="" required>
                            <div class="valid-feedback">
                            @error('name')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                            </div>
                            </div>

                            <div class="col-md-6 mb-3">
                                <label for="blood_group">
                                    {{ __('text.blood_group')}} </label>
                                <select name="blood_group" id="blood_group" class="form-control @error('blood_group') is-invalid @enderror" required>
                                    <option value="">{{ __('text.select_your_blood_group')}} </option>
                                    <option value="a+">A+</option>
                                    <option value="a-">A-</option>
                                    <option value="b+">B+</option>
                                    <option value="b-">B-</option>
                                    <option value="ab+">AB+</option>
                                    <option value="ab-">AB-</option>
                                    <option value="o+">O+</option>
                                    <option value="o-">O-</option>
                                </select>
                                <div class="valid-feedback">
                                    @error('blood_group')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-md-6 mb-3">
                            <label for="email"> {{ __('text.email')}} </label>
                            <input type="email" class="form-control @error('email') is-invalid @enderror" id="email" placeholder="{{ __('text.enter_your_email')}}" name="email" value="" required autocomplete="" autofocus>
                            <div class="valid-feedback">
                            @error('email')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                            </div>
                            </div>

                            <div class="col-md-6 mb-3">
                            <label for="mobile"> {{ __('text.mobile')}} </label>
                            <input type="mobile" class="form-control @error('mobile') is-invalid @enderror" id="mobile" placeholder="{{ __('text.enter_your_mobile_number')}}" name="mobile" value="" required>
                            <div class="valid-feedback">
                            @error('mobile')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                            </div>
                            </div>

                            <div class="col-md-6 mb-3">
                            <label for="password">{{ __('text.password')}}</label>
                            <input type="password" class="form-control @error('password') is-invalid @enderror" id="password" placeholder="{{ __('text.enter_your_password')}}" name="password" value="" required autocomplete="">
                            <div class="valid-feedback">
                            @error('password')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                            </div>
                            </div>

                            <div class="col-md-6 mb-3">
                            <label for="password"> {{ __('text.confirm_password')}}  </label>
                            <input type="password" class="form-control @error('confirm_password') is-invalid @enderror" id="password" placeholder="{{ __('text.enter_your_confirm_password')}}" name="password_confirmation" value="" required autocomplete>
                            <div class="valid-feedback">
                            @error('confirm_password')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                            </div>
                            </div>

                            <div class="col-md-6 mb-3">
                            <label for="country"> {{ __('text.country')}} </label>
                            <select name="country" id="country" class="col-md-12 form-control @error('country') is-invalid @enderror" required>
                                <option value=""> {{ __('text.select_your_country')}} </option>
                            <option value="bangladesh">{{ __('text.bangladesh')}}</option>
                            </select>
                            <div class="valid-feedback">
                            @error('country')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                            </div>
                            </div>

                            <div class="col-md-6 mb-3">
                            <label for="city"> {{ __('text.city')}}</label>
                            <input type="text" class="form-control @error('city') is-invalid @enderror" id="city" placeholder=" {{ __('text.enter_your_city_country')}} " name="city" value="" required>
                            <div class="valid-feedback">
                            @error('city')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                            </div>
                            </div>

                            <div class="col-md-6 mb-3">
                            <label for="district"> {{ __('text.district')}} </label>
                            <select name="district" class="form-control @error('district') is-invalid @enderror"  id="district" required>
                                <option value=""> {{ __('text.select_your_district')}} </option>
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
                            <div class="valid-feedback">
                            @error('district')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                            </div>
                            </div>

                            <div class="col-md-6 mb-3">
                            <label for="thana"> {{ __('text.thana')}}</label>
                            <input type="text" class="form-control @error('thana') is-invalid @enderror" id="thana" placeholder="{{ __('text.enter_your_thana')}}" name="thana" value="" required>
                            <div class="valid-feedback">
                            @error('thana')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                            </div>
                            </div>

                            <div class="col-md-6 mb-3">
                                <label for="area"> {{ __('text.area')}}</label>
                                <input type="text" class="form-control @error('area') is-invalid @enderror" id="area" placeholder="{{ __('text.enter_your_area')}}" name="area" value="" required>
                                <div class="valid-feedback">
                                @error('area')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                                </div>
                                </div>



                            <div class="col-md-6 mb-3">
                            <label for="status"> {{ __('text.status')}}</label>
                            <select  id="" name="status" class="col-md-12 form-control @error('status') is-invalid @enderror" required>
                            <option value=""> {{ __('text.select_status')}}</option>
                            <option value="0"> {{ __('text.active')}}</option>
                            <option value="1"> {{ __('text.inactive')}}</option>
                            </select>
                            <div class="valid-feedback">
                            @error('status')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                            </div>
                            </div>

                            <div class="col-md-12 mb-3">
                            <label for="address"> {{ __('text.address')}}</label>
                            <textarea class="form-control @error('address') is-invalid @enderror" name="address" id="address" cols="" rows="" placeholder="{{ __('text.enter_your_address')}}" required></textarea>
                            <div class="valid-feedback">
                            @error('address')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                            </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-sm btn-danger waves-effect " data-dismiss="modal">Close</button>
                        <button type="reset" class="btn btn-sm btn-primary waves-effect">Reset</button></button>
                        <button type="submit" class="btn btn-sm btn-success waves-effect waves-light " >Registration</button>
                    </div>
                </form>
            </div>
        </div>
        </div>
    {{-- registration modal end --}}

    {{-- Login Form Modal Start--}}

    <!-- Button trigger modal -->

    <!-- Login Modal Start -->
    <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">{{__('text.login_form')}}</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            </div>
            <div class="modal-body">
                <form method="post" action="{{ route('login') }}">
                    @csrf
                    <div class="col-md-12 mb-3">
                        <label for="email">{{ __('text.email')}} </label>
                        <input type="text" class="form-control @error('email') is-invalid @enderror" id="email" placeholder=" {{ __('text.enter_your_email')}} " name="email" value="" autocomplete="" required>
                        <div class="valid-feedback">
                        @error('email')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                        </div>
                    </div>
                    <div class="col-md-12 mb-3">
                        <label for="password">{{ __('text.password')}} </label>
                        <input type="password" class="form-control @error('password') is-invalid @enderror" id="password" placeholder=" {{ __('text.enter_your_password')}} " name="password" value="" required>
                        <div class="valid-feedback">
                        @error('password')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                        </div>
                    </div>
            </div>
            <div class="modal-footer">
            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
            <button type="reset" class="btn btn-info">Reset</button>
            <button type="submit" class="btn btn-success">Log In</button>
            </div>
        </form>
        </div>
        </div>
    </div>
    {{-- Login form modal end --}}

     <!-- About Our website Modal Start -->
     <div class="modal fade" id="about_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
            <h5 class="modal-title text-success" id="exampleModalLabel">{{__('text.about_our_website')}}</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            </div>
            <div class="modal-body">
                <div class="col-md-12 my-2">
                <p class="text-success">{{__('text.about_uss')}}</p>
                <br>
                <p class="text-success">{{__('text.about')}}</p>
                </div>
            </div>
            <div class="modal-footer">
            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
            </div>
        </form>
        </div>
        </div>
    </div>
    {{-- About Our website modal end --}}


    <!-- Contact Us Modal Start -->
    <div class="modal fade" id="contact_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form>
            <div class="modal-header">
            <h5 class="modal-title text-success" id="exampleModalLabel">{{__('text.contact_us')}}</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            </div>
            <div class="modal-body">
                <div class="form-group row">
                    <label for="website_name" class="col-sm-4 col-form-label text-danger">{{__('text.website_name')}} :</label>
                    <div class="col-sm-8 ">
                        <input type="text" readonly class="form-control-plaintext text-success" id="website_name" value="Blood Donners BD">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="email" class="col-sm-4 col-form-label text-danger">{{__('text.email')}} :</label>
                    <div class="col-sm-8 ">
                        <input type="text" readonly class="form-control-plaintext text-success" id="email" value="sujonkumer8231@gmail.com">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="mobile" class="col-sm-4 col-form-label text-danger">{{__('text.mobile')}} :</label>
                    <div class="col-sm-8 ">
                        <input type="text" readonly class="form-control-plaintext text-success" id="mobile" value="+8801785408231">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="address" class="col-sm-4 col-form-label text-danger">{{__('text.address')}} :</label>
                    <div class="col-sm-8 ">
                        <input type="text" readonly class="form-control-plaintext text-success" id="address" value="Singra, Natore, Bangladesh.">
                    </div>
                </div>

            </div>
            <div class="modal-footer">
            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
            </div>
        </form>
        </div>
        </div>
    </div>
    {{-- Contact us modal end --}}




    @endsection

    @section('js')
    <script>
        $(document).ready(function(){


            //alert time out function
            setTimeout(function() {
            $(".alert").alert('close');
            }, 7000);

            //add donner registration modal
            $(document).on('click','.addRegister',function(){
                $('#registerForm').trigger("reset");
                $("#addNewRegisterModal").modal("toggle");
            });


            //login modal
            $(document).on('click','.login_form',function(){
                $('#loginForm').trigger("reset");
                $("#loginModal").modal("toggle");
            });

            //about modal about_modal
            $(document).on('click','.about_modal',function(){
                $("#about_modal").modal("toggle");
            });

             //about modal about_modal
             $(document).on('click','.contact_modal',function(){
                $("#contact_modal").modal("toggle");
            });



            //add hospital info modal fbGroupAdd
            $(document).on('click','.hospitalAdd',function(){
                $('#HospitalForm').trigger("reset");
                $('#set_customer_pricing_id').attr("disabled", "true");
                $("#HospitalModal").modal("toggle");
            });

            $('#HospitalInfoTable').DataTable({
                processing: true,
                serverSide: true,
                ajax: '{{ route('hospital-info-lists') }}',
                columns: [
                { title:'{{__('text.id')}}', data: 'id' },
                { title:'{{__('text.hospital_name')}}', data: 'name'},
                { title:'{{__('text.hospital_contact')}}', data: 'hospital_mobile'},
                { title:'{{__('text.ambulance_number')}}', data: 'ambulance_contact'},
                { title:'{{__('text.location')}}', data: 'location'},
                { title:'{{__('status')}}', data: 'status'},
                { title:'{{__('text.action')}}', data: 'action'},
                ]
            });

            $('#HospitalForm').ajaxForm({
                beforeSend: formBeforeSend,
                beforeSubmit: formBeforeSubmit,
                error: formError,
                success: function (responseText, statusText, xhr, $form) {
                    formSuccess(responseText, statusText, xhr, $form);
                    $('#HospitalModal').modal('hide');
                    $('#HospitalInfoTable').DataTable().draw(true);
                },
                success:function (response) {
                    swal(
                        response.message,
                        response.icerik,
                        response.durum
                    );
                },
                clearForm: true,
                resetForm: true
            });

            $(document).on('click','.hospitalEdit', function(){
            var id = $(this).attr('id');
            var name = $(this).attr('name');
            var hospital_mobile = $(this).attr('hospital_mobile');
            var ambulance_contact = $(this).attr('ambulance_contact');
            var location = $(this).attr('location');
            var hospital_status = $(this).attr('status');

            $('#hospital_id').removeAttr("disabled");
            $('#hospital_id').val(id);
            $('#name').val(name);
            $('#hospital_mobile').val(hospital_mobile);
            $('#ambulance_contact').val(ambulance_contact);
            $('#location').val(location);
            $('#hospital_status').val(hospital_status);
            $('#HospitalModal').modal('show');
            });

            // Hospital Delete Function
            $(document).on('click','.hospitalDelete', function (){
                var id = $(this).attr('id');
                $.ajax({
                    type: 'get',
                    url: '{{ url('delete-hospital-info') }}/'+id ,
                    success:function(data) {
                        $('#HospitalInfoTable').DataTable().draw(true);
                        Messenger().post({
                            message: data.message,
                            showCloseButton: true
                        });
                    }
                });
            });





            //add Bus Counter modal
            $(document).on('click','.CounterAdd',function(){
                $('#BusCounterForm').trigger("reset");
                $('#BusCounter_id').attr("disabled", "true");
                $("#BusCounterModal").modal("toggle");
            });

            $('#BusCounterTable').DataTable({
                processing: true,
                serverSide: true,
                ajax: '{{ route('counter-lists') }}',
                columns: [
                { title:'{{__('text.id')}}', data: 'id' },
                { title:' {{__('text.counter_name')}}', data: 'counter_name'},
                { title:'{{__('text.counter_mobile')}}', data: 'counter_mobile'},
                { title:'{{__('text.counter_location')}}', data: 'counter_location'},
                { title:'{{__('text.status')}}', data: 'status'},
                { title:'{{__('text.action')}}', data: 'action'},
                ]
            });

            $('#BusCounterForm').ajaxForm({
                beforeSend: formBeforeSend,
                beforeSubmit: formBeforeSubmit,
                error: formError,
                success: function (responseText, statusText, xhr, $form) {
                    formSuccess(responseText, statusText, xhr, $form);
                    $('#BusCounterModal').modal('hide');
                    $('#BusCounterTable').DataTable().draw(true);
                },
                success:function (response) {
                    swal(
                        response.message,
                        response.icerik,
                        response.durum
                    );
                },
                clearForm: true,
                resetForm: true
            });



            $(document).on('click','.countrEdit', function(){
            var id = $(this).attr('id');
            var counter_name = $(this).attr('counter_name');
            var counter_mobile = $(this).attr('counter_mobile');
            var counter_location = $(this).attr('counter_location');
            var select_country = $(this).attr('country');
            var status = $(this).attr('status');

            $('#BusCounter_id').removeAttr("disabled");
            $('#BusCounter_id').val(id);
            $('#counter_name').val(counter_name);
            $('#counter_mobile').val(counter_mobile);
            $('#counter_location').val(counter_location);
            $('#select_country').val(select_country);
            $('#select_status').val(status);
            $('#BusCounterModal').modal('show');
            });

            // $(document).on('click','.diseaseDelete', function (){
            //     var id = $(this).attr('id');
            //     $.ajax({
            //         type: 'get',
            //         url: '{{ url('delete-disease') }}/'+id ,
            //         success:function(data) {
            //             $('#DiseaseTable').DataTable().draw(true);
            //             Messenger().post({
            //                 message: data.message,
            //                 showCloseButton: true
            //             });
            //         }
            //     });
            // });








































            //add Disease and medicine info modal
            $(document).on('click','.DiseaseAdd',function(){
                $('#DiseaseMedicineForm').trigger("reset");
                $('#Disease_id').attr("disabled", "true");
                $("#DiseaseMedicineModal").modal("toggle");
            });

            $('#DiseaseMedicineTable').DataTable({
                processing: true,
                serverSide: true,
                ajax: '{{ route('disease-lists') }}',
                columns: [
                { title:'{{__('text.id')}}', data: 'id' },
                { title:' {{__('text.disease_name')}}', data: 'disease_name'},
                { title:'{{__('text.disease_medicine')}}', data: 'disease_medicine'},
                { title:'{{__('text.dosage_and_usage_rules')}}', data: 'dosage_and_usage_rules'},
                { title:'{{__('text.status')}}', data: 'status'},
                { title:'{{__('text.action')}}', data: 'action'},
                ]
            });

            $('#DiseaseMedicineForm').ajaxForm({
                beforeSend: formBeforeSend,
                beforeSubmit: formBeforeSubmit,
                error: formError,
                success: function (responseText, statusText, xhr, $form) {
                    formSuccess(responseText, statusText, xhr, $form);
                    $('#DiseaseMedicineModal').modal('hide');
                    $('#DiseaseMedicineTable').DataTable().draw(true);
                },
                success:function (response) {
                    swal(
                        response.message,
                        response.icerik,
                        response.durum
                    );
                },
                clearForm: true,
                resetForm: true
            });



            $(document).on('click','.diseaseEdit', function(){
            var id = $(this).attr('id');
            var disease_name = $(this).attr('disease_name');
            var disease_medicine = $(this).attr('disease_medicine');
            var dosage_and_usage_rules = $(this).attr('dosage_and_usage_rules');
            var status = $(this).attr('status');

            $('#Disease_id').removeAttr("disabled");
            $('#Disease_id').val(id);
            $('#disease_name').val(disease_name);
            $('#disease_medicine').text(disease_medicine);
            $('#dosage_and_usage_rules').text(dosage_and_usage_rules);
            $('#disease_status').val(status);
            $('#DiseaseModal').modal('show');
            });

            $(document).on('click','.diseaseDelete', function (){
                var id = $(this).attr('id');
                $.ajax({
                    type: 'get',
                    url: '{{ url('delete-disease') }}/'+id ,
                    success:function(data) {
                        $('#DiseaseTable').DataTable().draw(true);
                        Messenger().post({
                            message: data.message,
                            showCloseButton: true
                        });
                    }
                });
            });



            //add FB Blood Group
            $(document).on('click','.fbGroupAdd',function(){
                $('#FbBloodGroupForm').trigger("reset");
                $('#FbBloodGroup_id').attr("disabled", "true");
                $("#FBBloodGroupModal").modal("toggle");
            });

            $('#FBBloodGroupTable').DataTable({
                processing: true,
                serverSide: true,
                ajax: '{{ route('fb-group-lists') }}',
                columns: [
                { title:'{{__('text.id')}}', data: 'id' },
                { title:'{{__('text.group_name')}}', data: 'blood_group_name'},
                { title:'{{__('text.group_link')}}', data: 'blood_group_link'},
                { title:'{{__('text.status')}}', data: 'status'},
                { title:'{{__('text.action')}}', data: 'action'},
                ]
            });

            $('#FbBloodGroupForm').ajaxForm({
                beforeSend: formBeforeSend,
                beforeSubmit: formBeforeSubmit,
                error: formError,
                success: function (responseText, statusText, xhr, $form) {
                    formSuccess(responseText, statusText, xhr, $form);
                    $('#FBBloodGroupModal').modal('hide');
                    $('#FBBloodGroupTable').DataTable().draw(true);
                },
                success:function (response) {
                    swal(
                        response.message,
                        response.icerik,
                        response.durum
                    );
                },
                clearForm: true,
                resetForm: true
            });

            $(document).on('click','.FbBloodGroupEdit', function(){
            var id = $(this).attr('id');
            var blood_group_name = $(this).attr('blood_group_name');
            var blood_group_link = $(this).attr('blood_group_link');
            var status = $(this).attr('status');

            $('#FbBloodGroup_id').removeAttr("disabled");
            $('#FbBloodGroup_id').val(id);
            $('#group_name').val(blood_group_name);
            $('#blood_group_link').val(blood_group_link);
            $('#blood_group_status').val(status);
            $('#FBBloodGroupModal').modal('show');
            });

            $(document).on('click','.FBBloodGroupDelete', function (){
                var id = $(this).attr('id');
                $.ajax({
                    type: 'get',
                    url: '{{ url('delete-fb-blood-group') }}/'+id ,
                    success:function(data) {
                        $('#FBBloodGroupTable').DataTable().draw(true);
                        Messenger().post({
                            message: data.message,
                            showCloseButton: true
                        });
                    }
                });
            });


            //Fire Service
            $('#FireServiceTable').DataTable({
                processing: true,
                serverSide: true,
                ajax: '{{ route('fire-service-list') }}',
                columns: [
                { title:'{{__('text.id')}}', data: 'id' },
                { title:'{{__('text.fire_service_name')}}', data: 'fire_service_name'},
                { title:'{{__('text.fire_service_number')}}', data: 'fire_service_number'},
                { title:'{{__('text.fire_service_location')}}', data: 'fire_service_location'},
                ]
            });

            //Thana Service
            $('#ThanaServiceTable').DataTable({
                processing: true,
                serverSide: true,
                ajax: '{{ route('thana-service-list') }}',
                columns: [
                { title:'{{__('text.id')}}', data: 'id' },
                { title:'{{__('text.Thana_name')}}', data: 'thana_name'},
                { title:'{{__('text.Thana_number')}}', data: 'thana_number'},
                { title:'{{__('text.Thana_location')}}', data: 'thana_location'},
                ]
            });

            //govt website Service
            $('#GovtWebsiteTable').DataTable({
                processing: true,
                serverSide: true,
                ajax: '{{ route('govt-website-list') }}',
                columns: [
                { title:'{{__('text.id')}}', data: 'id' },
                { title:'{{__('text.website_name')}}', data: 'website_name'},
                { title:'{{__('text.website_link')}}', data: 'website_link'},
                ]
            });






        });


        </script>
    @endsection

