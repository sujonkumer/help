@extends('layouts.backend')
@section('title','Dashboard: Welcome To Blood Donners BD-2020')
@section('css')
<!-- ico font -->
<link rel="stylesheet" type="text/css" href="{{asset('backend/assets/icon/icofont/css/icofont.css')}}">
@endsection
@section('content')

<div class="row">
	<!-- task, page, download counter  start -->
	<div class="col-xl-3 col-md-6">
		<div class="card">
			<div class="card-block px-3">
				<div class="row align-items-center">

					<div class="col-8">
						<h4 class="text-c-purple">{{ $A_posative->count() }}</h4>
						<h4 class="text-muted m-b-0">A+</h4>
					</div>
					<div class="col-4 text-right">
						<i class="fa fa-bar-chart f-28"> {{__('text.blood')}}</i>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-xl-3 col-md-6 ">
		<div class="card">
			<div class="card-block px-3">
				<div class="row align-items-center">
					<div class="col-8">
                        <h4 class="text-c-purple">{{ $A_negetive->count() }}</h4>
						<h4 class="text-muted m-b-0">A-</h4>
					</div>
					<div class="col-4 text-right">
						<i class="fa fa-bar-chart f-28">{{__('text.blood')}}</i>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-xl-3 col-md-6">
		<div class="card">
			<div class="card-block px-3">
				<div class="row align-items-center">
					<div class="col-8">
						<h4 class="text-c-purple">{{ $B_posative->count() }}</h4>
						<h4 class="text-muted m-b-0">B+</h4>
					</div>
					<div class="col-4 text-right">
						<i class="fa fa-bar-chart f-28">{{__('text.blood')}}</i>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-xl-3 col-md-6">
		<div class="card">
			<div class="card-block px-3">
				<div class="row align-items-center">
					<div class="col-8">
						<h4 class="text-c-purple">{{ $B_negetive->count() }}</h4>
						<h4 class="text-muted m-b-0">B-</h4>
					</div>
					<div class="col-4 text-right">
						<i class="fa fa-bar-chart f-28">{{__('text.blood')}}</i>
					</div>
				</div>
			</div>
		</div>
    </div>

    <div class="col-xl-3 col-md-6 ">
		<div class="card">
			<div class="card-block px-3">
				<div class="row align-items-center">
					<div class="col-8">
						<h4 class="text-c-purple">{{ $AB_posative->count() }}</h4>
						<h4 class="text-muted m-b-0">AB+</h4>
					</div>
					<div class="col-4 text-right">
						<i class="fa fa-bar-chart f-28">{{__('text.blood')}}</i>
					</div>
				</div>
			</div>
		</div>
    </div>

    <div class="col-xl-3 col-md-6 ">
		<div class="card">
			<div class="card-block px-3">
				<div class="row align-items-center">
					<div class="col-8">
						<h4 class="text-c-purple">{{ $AB_negetive->count() }}</h4>
						<h4 class="text-muted m-b-0">AB-</h4>
					</div>
					<div class="col-4 text-right">
						<i class="fa fa-bar-chart f-28">{{__('text.blood')}}</i>
					</div>
				</div>
			</div>
		</div>
    </div>

    <div class="col-xl-3 col-md-6 ">
		<div class="card">
			<div class="card-block px-3">
				<div class="row align-items-center">
					<div class="col-8">
						<h4 class="text-c-purple">{{ $O_posative->count() }}</h4>
						<h4 class="text-muted m-b-0">O+</h4>
					</div>
					<div class="col-4 text-right">
						<i class="fa fa-bar-chart f-28">{{__('text.blood')}}</i>
					</div>
				</div>
			</div>
		</div>
    </div>

    <div class="col-xl-3 col-md-6 ">
		<div class="card">
			<div class="card-block px-3">
				<div class="row align-items-center">
					<div class="col-8">
						<h4 class="text-c-purple">{{ $O_negetive->count() }}</h4>
						<h4 class="text-muted m-b-0">O-</h4>
					</div>
					<div class="col-4 text-right">
						<i class="fa fa-bar-chart f-28">{{__('text.blood')}}</i>
					</div>
				</div>
			</div>
		</div>
	</div>

</div>
<!-- task, page, download counter  end -->
        @if(Session::get('message'))
            <div class="alert alert-success alert-dismissible fade show" role="alert">
            <strong>Message : </strong> {{Session::get('message')}}
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            </div>
        @endif


        @if(Session::get('error_message'))
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
            <strong>Error : </strong> {{Session::get('error_message')}}
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            </div>
        @endif
<!-- Simple card start -->
<div class="row">
	<div class="col-sm-12 col-md-12 col-xl-12">
		<div class="card-box">
			<!-- Row start -->
			<div class="row">
				<div class="col-lg-12 col-xl-12">
					<!-- Nav tabs -->
					<ul class="nav nav-tabs  tabs" role="tablist">
						<li class="nav-item">
                        <a class="nav-link active" data-toggle="tab" href="#profile1" role="tab">{{__('text.update_prifile_information')}}</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" data-toggle="tab" href="#messages1" role="tab"> {{__('text.change_profile_password')}}</a>
						</li>
						{{-- <li class="nav-item">
							<a class="nav-link" data-toggle="tab" href="#ftpaccount" role="tab">FTP Account</a>
						</li> --}}
					</ul>
					<!-- Tab panes -->

					<div class="tab-content tabs">
						<div class="tab-pane active" id="profile1" role="tabpanel">
							<div class="row">
								<div class="col-sm-12 col-sm-12 col-xl-12">
									<div class="">
									<form id="updateProfile" method="post" action="{{ route('admin.updata-profile') }}" enctype="multipart/form-data">
											{{ @csrf_field() }}
											<div class="form-group row">
												<label class="col-sm-2 col-form-label">{{__('text.name')}}</label>
												<div class="col-sm-10">
													<input type="text" class="form-control" id="name" name="name" placeholder="{{ $data->name }}" value="{{ $data->name }}">
													<span class="messages"></span>
												</div>
											</div>


											<div class="form-group row">
												<label class="col-sm-2 col-form-label">{{__('text.email')}}</label>
												<div class="col-sm-10">
													<input type="email" class="form-control" id="email" name="email" placeholder="{{ $data->email }}" value="{{ $data->email }}">
													<span class="messages"></span>
												</div>
											</div>

											<div class="form-group row">
												<label class="col-sm-2 col-form-label">{{__('text.mobile')}}</label>
												<div class="col-sm-10">
													<input type="tezt" class="form-control" id="mobile" name="mobile" placeholder="{{ $data->mobile }}" value="{{ $data->mobile }}">
													<span class="messages"></span>
												</div>
											</div>

											<div class="form-group row">
												<label class="col-sm-2 col-form-label">{{__('text.blood_group')}}</label>
												<div class="col-sm-10">
												<select  id="blood_group" name="blood_group" class="col-sm-12 form-control" required>
													<option value="{{ $data->blood_group }}">{{$data->blood_group}}</option>
													<option value="a+">A+</option>
													<option value="a-">A-</option>
													<option value="b+">B+</option>
													<option value="b-">B-</option>
													<option value="ab+">AB+</option>
													<option value="ab-">AB-</option>
													<option value="o+">O+</option>
													<option value="o-">O-</option>
												</select>
													<span class="messages"></span>
												</div>
											</div>


											<div class="form-group row">
												<label class="col-sm-2 col-form-label">{{__('text.profile_picture')}}</label>
												<div class="col-sm-10">
													<input type="file" class="form-control" value="{{ $data->profile_picture }}" name="profile_picture" id="profile_picture">
													<span class="messages"></span>
													<img src="" id="image_preview" class="rounded float-left d-none mt-3" style="height: 100px; width:100px;">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-2 col-form-label">{{__('text.address')}}</label>
												<div class="col-sm-10">
													<textarea class="form-control" id="address" name="address" placeholder="{{ $data->address }}">{{ $data->address }}</textarea>
													<span class="messages"></span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-2 col-form-label">{{__('text.country')}}</label>
												<div class="col-sm-10">
													<select class="form-control" name="country" id="country">
														<option></option>
														<option value="{{ $data->country }}"
															selected=""
														>{{ $data->country }}</option>
													</select>
													<span class="messages"></span>
												</div>
											</div>

											<div class="form-group row">
												<label class="col-sm-2 col-form-label">{{__('text.city')}}</label>
												<div class="col-sm-10">
													<input class="form-control" id="city" name="city" placeholder="" value="{{ $data->city }}">
													<span class="messages"></span>
												</div>
											</div>

											<div class="form-group row">
												<label class="col-sm-2 col-form-label">{{__('text.district')}}</label>
												<div class="col-sm-10">
													<input class="form-control" id="district" name="district" placeholder="" value="{{ $data->district }}">
													<span class="messages"></span>
												</div>
											</div>

											<div class="form-group row">
												<label class="col-sm-2 col-form-label">{{__('text.thana')}}</label>
												<div class="col-sm-10">
													<input type="text" class="form-control" name="thana" id="thana" placeholder="{{ $data->thana }}" value="{{ $data->thana }}">
													<span class="messages"></span>
												</div>
                                            </div>
                                            <div class="form-group row">
												<label class="col-sm-2 col-form-label">{{__('text.local_area')}}</label>
												<div class="col-sm-10">
													<input type="text" class="form-control" name="area" id="area" placeholder="{{ $data->area }}" value="{{ $data->area }}">
													<span class="messages"></span>
												</div>
                                            </div>

                                            <div class="form-group row">
												<label class="col-sm-2 col-form-label">{{__('text.last_blood_donate_time')}}</label>
												<div class="col-sm-10">
													<input type="date" class="form-control" name="last_donate_time" id="last_donate_time" placeholder="{{ $data->last_donate_time }}" value="{{ $data->last_donate_time }}">
													<span class="messages"></span>
												</div>
                                            </div>

                                            <div class="form-group row">
												<label class="col-sm-2 col-form-label">{{__('text.last_blood_donate_null')}} </label>
												<div class="col-sm-10">
                                                    <input type="checkbox" class="" checked name="last_donate_time" id="last_donate_time" value="NULL"> <span style="color:red;">{{__('text.null')}}</span>
													<span class="messages"></span>
												</div>
											</div>

											<div class="form-group row">
												<label class="col-sm-2 col-form-label">{{__('text.status')}}</label>
												<div class="col-sm-10">
													<select name="donenr_status" id="donenr_status" class="form-control">
                                                        @if ($data->status == 0)
                                                    <option value="{{$data->status}}">{{__('text.active_donate')}}</option>
                                                        @else
                                                    <option value="{{$data->status}}">{{__('text.pending')}}</option>
                                                        @endif
                                                        <option value="0">{{__('text.active_donate')}}</option>
                                                        <option value="1">{{__('text.pending')}}</option>
													</select>
													<span class="messages"></span>
												</div>
											</div>


											<div class="form-group row">
												<label class="col-sm-2"></label>
												<div class="col-sm-10 text-left">
													<button type="submit" class="btn btn-sm btn-success my-1">{{__('text.update')}}</button>
													<button type="reset" class="btn btn-sm btn-danger my-1">{{__('text.refresh')}}</button>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="tab-pane" id="messages1" role="tabpanel">
							<div class="row">
								<div class="col-sm-12 col-xl-12">
									<div class="">
										<form id="updatePassword" method="post" action="{{ route('admin.change-password') }}" novalidate>
											{{ @csrf_field() }}
											<div class="form-group row">
                                            <label class="col-sm-2 col-form-label">{{__('text.current_password')}}</label>
												<div class="col-sm-10">
                                                <input type="password" class="form-control" id="old_password" name="old_password" placeholder="{{__('text.enter_your_password')}}">
												<span class="messages"></span>
												</div>
											</div>

											<div class="form-group row">
                                            <label class="col-sm-2 col-form-label">{{__('text.new_password')}}</label>
												<div class="col-sm-10">
                                                <input type="password" class="form-control" id="password" name="password" placeholder="{{__('text.enter_new_password')}}">
													<span class="messages"></span>
												</div>
											</div>

											<div class="form-group row">
												<label class="col-sm-2"></label>
												<div class="col-sm-10 text-left">
                                                <button type="submit" class="btn btn-sm btn-success my-1"> {{__('text.update')}}</button>
                                                <button type="reset" class="btn btn-sm btn-danger my-1"> {{__('text.refresh')}}</button>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
						{{-- <div class="tab-pane" id="ftpaccount" role="tabpanel">
							<div class="row">
								<div class="col-sm-12 col-xl-12">
									<div class="text-left">
										<h5>FTP Account</h5></h5>
									</div>
									<div class="p-3">
										<form id="newUserForm" method="post" action="" novalidate>
											{{ @csrf_field() }}
											<div class="form-group row">
												<label class="col-sm-2 col-form-label">User Name</label>
												<div class="col-sm-10">
													<input type="text" class="form-control" id="userName" name="userName" placeholder="Enter User Name">
													<span class="messages"></span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-2 col-form-label">Email</label>
												<div class="col-sm-10">
													<input type="email" class="form-control" id="email" name="email" placeholder="Enter Email">
													<span class="messages"></span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-2 col-form-label">New Password</label>
												<div class="col-sm-10">
													<input type="password" class="form-control" id="password" name="password" placeholder="Enter password">
													<span class="messages"></span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-2 col-form-label">Re-Type Password</label>
												<div class="col-sm-10">
													<input type="password" class="form-control" id="password_confirmation" name="password_confirmation" placeholder="Enter Re-Type password">
													<span class="messages"></span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-2"></label>
												<div class="col-sm-10 text-left">
													<button type="submit" class="btn btn-sm btn-primary m-b-0">Submit</button>
													<button type="reset" class="btn btn-sm btn-danger m-b-0 ml-2">Refresh</button>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div> --}}
					</div>

				</div>
			</div>
	</div>
</div>
</div>

	<!-- end of row -->
	@endsection

	@section('js')
	<script type="text/javascript">
		$(document).ready(function() {
            //alert time out function
            setTimeout(function() {
            $(".alert").alert('close');
            }, 7000);
			// $('#updateProfile').ajaxForm({
			// 	error: formError,
			// 	success: function (responseText, statusText, xhr, $form) {
			// 		formSuccess(responseText, statusText, xhr, $form);
			// 		// readURL("#profile_picture",'#image_preview');
			// 		$("#image_preview").attr('src','{{asset("public/upload/user")}}/'+responseText.picture);
			// 	},
			// 	clearForm: true,
           	// 	resetForm: true
			// });
			$('#updatePassword').ajaxForm({
                beforeSend: formBeforeSend,
                beforeSubmit: formBeforeSubmit,
                error: formError,
                success: function (responseText, statusText, xhr, $form) {
                    formSuccess(responseText, statusText, xhr, $form);
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

			// $('#newUserForm').ajaxForm({
			// 	error: formError,
			// 	success: function (responseText, statusText, xhr, $form) {
			// 		formSuccess(responseText, statusText, xhr, $form);
			// 	},
			// 	resetForm:true
			// });
			// $('#PackageUpgradeForm').ajaxForm({
			// 	error: formError,
			// 	success: function (responseText, statusText, xhr, $form) {
			// 		formSuccess(responseText, statusText, xhr, $form);
			// 		$('#packageStatus').html(responseText.package_name);
			// 	},
			// 	resetForm:true
			// });
		});

		// function readURL(input,el) {
		// 	if (input.files && input.files[0]) {
		// 		var reader = new FileReader();
		// 		reader.onload = function(e) {
		// 			$(el).attr('src', e.target.result);
		// 		}

		// 		reader.readAsDataURL(input.files[0]);
		// 	}
		// }
	</script>
	@endsection
