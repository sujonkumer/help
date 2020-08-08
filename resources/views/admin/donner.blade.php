@extends('layouts.backend')
@section('title','Donners List')
@section('content')
	<div class="card m-3">
	    <div class="card-header">
	        <h5>{{__('text.donner_list')}}</h5>
	        <button class="btn btn-sm btn-primary float-right add_donner"><i class="fa fa-plus-circle pr-2"></i> {{__('text.add_new_donner')}} </button>
	    </div>
	    <div class="card-block m-4">
	        <div class="dt-responsive table-responsive">
	            <table id="donnerTable" class="table table-striped table-bordered nowrap text-center">

	            </table>
	        </div>
	    </div>
	</div>

	<!-- Add Modal -->
	<div class="modal fade" id="donnerModal" tabindex="-1" role="dialog">
	    <div class="modal-dialog" role="document">
	        <div class="modal-content">
				<form id="donnerForm" method="post" action="{{route('add-donner')}}" novalidate>
					@csrf
	        		<input type="hidden" name="donner_id" id="donner_id">
		            <div class="modal-header">
		                <h4 class="modal-title">New Donner</h4>
		                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		                    <span aria-hidden="true">&times;</span>
		                </button>
		            </div>
		            <div class="modal-body">
						<div class="form-group row">
	                        <label class="col-sm-3 col-form-label">Name</label>
	                        <div class="col-sm-9">
	                            <input type="text" class="form-control form-control-sm" name="name" id="name" placeholder="Enter Your Name">
	                            <span class="messages"></span>
	                        </div>
						</div>

						<div class="form-group row">
	                        <label class="col-sm-3 col-form-label">Email</label>
	                        <div class="col-sm-9">
	                            <input type="text" class="form-control form-control-sm" name="email" id="email" placeholder="Enter Your Email">
	                            <span class="messages"></span>
	                        </div>
						</div>

						<div class="form-group row">
	                        <label class="col-sm-3 col-form-label">Mobile</label>
	                        <div class="col-sm-9">
	                            <input type="text" class="form-control form-control-sm" name="mobile" id="mobile" placeholder="Enter Your Mobile">
	                            <span class="messages"></span>
	                        </div>
						</div>

						<div class="form-group row">
	                        <label class="col-sm-3 col-form-label">Blood Group</label>
								<div class="col-sm-9">
									<select  id="blood_group" name="blood_group" class=" form-control form-control-sm" required>
										<option value="">Select Your Blood Group</option>
										<option value="a+">A+</option>
										<option value="a-">A-</option>
										<option value="b+">B+</option>
										<option value="b-">B-</option>
										<option value="ab+">AB+</option>
										<option value="ab-">AB-</option>
										<option value="o+">O+</option>
										<option value="o-">O-</option>
									</select>
								</div>
	                            <span class="messages"></span>
						 </div>

						 <div class="form-group row">
	                        <label class="col-sm-3 col-form-label">Country</label>
	                        <div class="col-sm-9">
							<select  id="country" name="country" class=" form-control form-control-sm" required>
										<option value="">Select Your Country</option>
										<option value="bangladesh">Bangladesh</option>
										<option value="india">India</option>
									</select>
	                            <span class="messages"></span>
	                        </div>
						</div>

						 <div class="form-group row">
	                        <label class="col-sm-3 col-form-label">City</label>
	                        <div class="col-sm-9">
	                            <input type="text" class="form-control form-control-sm" name="city" id="city" placeholder="Enter Your City">
	                            <span class="messages"></span>
	                        </div>
						</div>

						 <div class="form-group row">
	                        <label class="col-sm-3 col-form-label">District</label>
	                        <div class="col-sm-9">
	                            <input type="text" class="form-control form-control-sm" name="district" id="district" placeholder="Enter Your District">
	                            <span class="messages"></span>
	                        </div>
						</div>

						<div class="form-group row">
	                        <label class="col-sm-3 col-form-label">Thana</label>
	                        <div class="col-sm-9">
	                            <input type="text" class="form-control form-control-sm" name="thana" id="thana" placeholder="Enter Your Thana">
	                            <span class="messages"></span>
	                        </div>
						</div>

						<div class="form-group row">
	                        <label class="col-sm-3 col-form-label">Status</label>
	                        <div class="col-sm-9">
	                           <select name="donner_status" id="donner_status" class="form-control form-control-sm">
								   <option value="">Select Status</option>
								   <option value="0">Active</option>
								   <option value="1">InActive</option>
							   </select>
	                            <span class="messages"></span>
	                        </div>
	                    </div>
		            </div>
		            <div class="modal-footer">
		                <button type="Submit" class="btn btn-sm btn-success waves-effect waves-light">Submit</button>
		                <button type="button" class="btn btn-sm btn-danger waves-effect "data-dismiss="modal">Close</button>
		            </div>
	           </form>
	        </div>
	    </div>
	</div>
	{{-- Add Modal end --}}
@endsection

@section('js')
	<script>
		$(document).on('click','.add_donner',function(){
			$('#donnerForm').trigger("reset");
			$('#donner_id').attr("disabled", "true");
			$("#donnerModal").modal("toggle");
		});


		$(function() {
			$('#donnerTable').DataTable({
				processing: true,
				serverSide: true,
				ajax: '{{ route('donner-list')}}',
				columns: [
				{ title:'Serial', data: 'id'},
				{ title:'Name', data: 'name'},
				{ title:'Blood Group', data: 'blood_group'},
				{ title:'Mobile', data: 'mobile'},
				{ title:'Country', data: 'country'},
				{ title:'City', data: 'city'},
				{ title:'District', data: 'district'},
				{ title:'Thana', data: 'thana'},
				{ title:'Status', data: 'status'},
				{ title:'Action', data: 'action'},
				]
			});

			$('#donnerForm').ajaxForm({
				beforeSend: formBeforeSend,
            	beforeSubmit: formBeforeSubmit,
				error: formError,
				success: function (responseText, statusText, xhr, $form) {
					formSuccess(responseText, statusText, xhr, $form);
					$('#donnerModal').modal('hide');
					$('#donnerTable').DataTable().draw(true);
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
		});

		$(document).on('click','.donnerEdit', function(){
			var donner_id = $(this).attr('donner_id');

			var id = $(this).attr('id');
			var name = $(this).attr('name');
			var email = $(this).attr('email');
			var mobile = $(this).attr('mobile');
			var blood_group = $(this).attr('blood_group');
			var country = $(this).attr('country');
			var district = $(this).attr('district');
			var thana = $(this).attr('thana');
			var city = $(this).attr('city');
			var status = $(this).attr('status');

			$('#donner_id').removeAttr("disabled");
			$('#donner_id').val(donner_id);
			$('#donner_id').val(id);
			$('#name').val(name);
			$('#email').val(email);
			$('#mobile').val(mobile);
			$('#blood_group').val(blood_group);
			$('#country').val(country);
			$('#district').val(district);
			$('#thana').val(thana);
			$('#city').val(city);
			$('#donner_status').val(status);
			$('#donnerModal').modal('show');
		});

		$(document).on('click','.donnerDelete', function (){
			var id = $(this).attr('id');
			$.ajax({
				type: 'get',
				url: '{{ url('admin/delete-donner') }}/'+id ,
				success:function(data) {
					$('#donnerTable').DataTable().draw(true);
					Messenger().post({
						message: data.message,
						showCloseButton: true
					});
				}
			});
		});
	</script>
@endsection
