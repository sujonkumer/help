@if (count($donners) > 0)
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
        <p class="card-text text-white text-bold pt-2">Last Blood Donate Date: NULL <span class="text-uppercase " style="color: red;"></span></p>
        @else

        <p class="card-text text-white text-bold pt-2">Last Blood Donate Date: <span class="text-uppercase " style="color: rgb(0, 255, 85);">  {{ $donner->last_donate_time }}</span></p>
        @endif

    </div>
    <div class="priceTable-footer">
      <a class="button" href="javaScript:void(0)">Thank You!</a>
    </div>
  </div>
</div>
@endforeach
@else

   <!--================ Message section Start =================-->
   <section class="container text-center">
        <div class="row ">
            <div class="col-md-12">
                <div class="section-intro text-center bg-danger py-3">
                    <h2 class="text-white   text-center">Donner Not Found !!! <i class="fa fa-frown" aria-hidden="true"></i> </h2>
                    <br>
                    <h4 class="text-white text-center">You Can find blood from the Facebook Blood Donate group <a href="#fb_blood_group" class="link" style="color:green" >Facebook Donate Groups</a></h4>
                </div>
            </div>

        </div>
    </section>
<!--================ Message section End =================-->

@endif

