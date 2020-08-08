@extends('layouts.backend')
@section('title','Hospital Support List')
@section('content')
	<div class="card m-3">
	    <div class="card-header">
	        <h5>{{__('text.hospital_support_list')}}</h5>
	        <button class="btn btn-sm btn-primary float-right hospitalAdd"><i class="fa fa-plus-circle pr-2"></i> {{__('text.add_hosptal_and_ambulance_info')}} </button>
	    </div>
	    <div class="card-block m-4">
	        <div class="dt-responsive table-responsive">
	            <table id="HospitalInfoTable" class="table table-striped table-bordered nowrap text-center">

	            </table>
	        </div>
	    </div>
    </div>

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

@endsection

@section('js')
	<script>

    $(document).ready(function(){

        $(document).on('click','.hospitalAdd',function(){
            $('#HospitalForm').trigger("reset");
			$('#set_customer_pricing_id').attr("disabled", "true");
            $("#HospitalModal").modal("toggle");
        });
            $('#HospitalInfoTable').DataTable({
            processing: true,
            serverSide: true,
            ajax: '{{ route('hospital-info-list') }}',
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
    });




	</script>
@endsection
