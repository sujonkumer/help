  <!-- ================ start footer Area ================= -->
  <footer class="footer-area" id="footer_area">
    <div class="container">
      <div class="row">
        <div class="col-lg-4  col-md-6 col-sm-6">
          <div class="single-footer-widget">
          <h6> {{__('text.about_blood_donners_bd')}}</h6>
            <p>{{__('text.about')}}
            </p>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 col-sm-6">
          <div class="single-footer-widget">
          <h6> {{__('text.navigation_links')}}</h6>
            <div class="row">
              <div class="col">
                <ul>
                  <li><a href="{{ route('index')}}">{{__('text.home')}}</a></li>
                  <li><a href="#blood_donate">{{__('text.blood_donate')}}</a></li>
                  <li><a href="#hospital_ambulance_info">{{__('text.hospital_and_abmulance')}}</a></li>
                  <li><a href="#disease_and_medicine">{{__('text.disease_and_medicine')}}</a></li>

                  <li><a href="#help_line">{{__('text.help_line')}}</a></li>
                </ul>
              </div>
              <div class="col">
                <ul>
                  <li><a href="#fire_service">{{__('text.fire_service')}}</a></li>
                  <li><a href="#thana_service">{{__('text.thana_number')}}</a></li>
                  <li><a href="#govt_link">{{__('text.govt_website')}}</a></li>
                  <li><a href="#">{{__('text.facebook_blood_group')}}</a></li>
                  <li><a href="#top5">{{__('text.top5')}}</a></li>
                  <li><a href="#gallery">{{__('text.gallery')}}</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="single-footer-widget">
            <h6> {{__('text.contact_us')}}</h6>
              <div class="row">
                <div class="col">
                  <ul>
                    <li><a href="#">++8801785408231</a></li>
                    <li><a href="#">sujonkumer8231@gmail.com</a></li>
                    <li><a href="#hospital_ambulance_info">Address: singra, Natore, Bangladesh.</a></li>
                  </ul>
                </div>
                <div class="col">
                  <ul>
                    <li><a href="#">
                        <img src="{{asset('frontend/img/home/1200px-Flag_of_Bangladesh_(1971).svg.png')}}" alt="image" class="image-responsive" style="height: 150px; width:230px;">
                    </a></li>

                  </ul>
                </div>
              </div>
            </div>
          </div>
      </div>
    </div>
    <div class="footer-bottom">
      <div class="container">
        <div class="row align-items-center">
          <p class="col-lg-8 col-sm-12 footer-text m-0 text-center text-lg-left"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;All rights reserved [ Blood Donners BD-2020 ]| Web Design & Development <i class="fa fa-heart" aria-hidden="true"></i> by <a href="#sujon_sorkar">Sujon Kumer</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          <div class="col-lg-4 col-sm-12 footer-social text-center text-lg-right">
            <a href="#"><i class="fab fa-facebook-f"></i></a>
            <a href="#"><i class="fab fa-twitter"></i></a>
            <a href="#"><i class="fab fa-dribbble"></i></a>
            <a href="#"><i class="fab fa-behance"></i></a>

            <a href="#" title="Go to top" class="Go_to_top" id="Top" ><svg class="svg-inline--fa fa-arrow-alt-circle-up fa-w-16 top_test" aria-hidden="true" focusable="false" data-prefix="far" data-icon="arrow-alt-circle-up" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M256 504c137 0 248-111 248-248S393 8 256 8 8 119 8 256s111 248 248 248zm0-448c110.5 0 200 89.5 200 200s-89.5 200-200 200S56 366.5 56 256 145.5 56 256 56zm20 328h-40c-6.6 0-12-5.4-12-12V256h-67c-10.7 0-16-12.9-8.5-20.5l99-99c4.7-4.7 12.3-4.7 17 0l99 99c7.6 7.6 2.2 20.5-8.5 20.5h-67v116c0 6.6-5.4 12-12 12z"></path></svg></a>
          </div>
        </div>
      </div>
    </div>
  </footer>
    <!-- ================ End footer Area ================= -->
    {{-- <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script> --}}
    <script src="{{ asset('frontend/vendors/jquery/jquery-3.2.1.min.js')}}"></script>
    <script src="{{ asset('frontend/vendors/bootstrap/bootstrap.bundle.min.js')}}"></script>
    <script src="{{ asset('frontend/vendors/Magnific-Popup/jquery.magnific-popup.min.js')}}"></script>
    <script src="{{ asset('frontend/js/jquery.ajaxchimp.min.js')}}"></script>
    <script src="{{ asset('frontend/js/mail-script.js')}}"></script>
    <script src="{{ asset('frontend/js/countdown.js')}}"></script>
    <script src="{{ asset('frontend/js/jquery.magnific-popup.min.js')}}"></script>
    <script src="{{ asset('frontend/js/main.js')}}"></script>
    <script src="{{asset('assets/js/vendor.min.js')}}"></script>
    <script src="{{asset('Admin/js/popper.min.js')}}"></script>
    <script src="{{asset('sweetalert/sweetalert.min.js')}}"></script>


    <script src="{{asset('assets/js/app.min.js')}}"></script>


     <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>

    <script src="{{asset('frontend/js/moment.min.js')}}"></script>
    <script src="{{asset('datatable/js/jquery.dataTables.min.js')}}"></script>
    <script src="{{asset('datatable/js/jquery.dataTables.js')}}"></script>

    <script src="{{ asset('custom/form.js') }}" ></script>
    <script src="{{ asset('custom/custom.js') }}" ></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

@yield('js')
</body>
</html>

