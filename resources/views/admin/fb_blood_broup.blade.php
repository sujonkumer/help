@extends('layouts.backend')
@section('title','Facebook Blood Group List')
@section('content')
	<div class="card m-3">
	    <div class="card-header">
	        <h5>{{__('text.fb_blood_donate_group')}}</h5>
	        <button class="btn btn-sm btn-primary float-right fbGroupAdd"><i class="fa fa-plus-circle pr-2"></i> {{__('text.add_fb_blood_donate_group')}} </button>
	    </div>
	    <div class="card-block m-4">
	        <div class="dt-responsive table-responsive">
	            <table id="FBBloodGroupTable" class="table table-striped table-bordered nowrap text-center">

	            </table>
	        </div>
	    </div>
    </div>

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



@endsection

@section('js')
	<script>

    $(document).ready(function(){
        $(document).on('click','.fbGroupAdd',function(){
            $('#FbBloodGroupForm').trigger("reset");
			$('#FbBloodGroup_id').attr("disabled", "true");
            $("#FBBloodGroupModal").modal("toggle");
        });
        $('#FBBloodGroupTable').DataTable({
            processing: true,
            serverSide: true,
            ajax: '{{ route('fb-group-list') }}',
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

        $(document).on('click','.FbGroupDelete', function (){
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

    });




	</script>
@endsection
