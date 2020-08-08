@extends('layouts.backend')
@section('title','Disease & Medicine List')
@section('content')
	<div class="card m-3">
	    <div class="card-header">
	        <h5>{{__('text.disease_and_medicine_list')}}</h5>
	        <button class="btn btn-sm btn-primary float-right DiseaseAdd"><i class="fa fa-plus-circle pr-2"></i> {{__('text.add_disease_and_medicine')}} </button>
	    </div>
	    <div class="card-block m-4">
	        <div class="dt-responsive table-responsive">
	            <table id="DiseaseMedicineTable" class="table table-striped table-bordered nowrap text-center">

	            </table>
	        </div>
	    </div>
    </div>

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
                            <label for="validationServer01">{{__('text.disease_medicine')}}</label>
                            <textarea name="disease_medicine" id="disease_medicine" cols="10" rows="3" class="form-control" placeholder="{{__('text.enter_medicine_names_if_you_are_sure')}}" ></textarea>
                            <div class="valid-feedback">
                                @error('hospital_mobile')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>

                        <div class="col-md-12 mb-3">
                            <label for="dosage_and_usage_rules">{{__('text.')}}</label>
                            <textarea name="dosage_and_usage_rules" id="dosage_and_usage_rules" cols="10" rows="3" class="form-control" placeholder="{{__('text.enter_dosage_and_usage_rulse')}}" ></textarea>
                            <div class="valid-feedback">
                                @error('dosage_and_usage_rules')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>

                        <div class="col-md-12 mb-3">
                            <label for="validationServer01">{{__('text.status')}}</label>
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



@endsection

@section('js')
	<script>

    $(document).ready(function(){

        $(document).on('click','.DiseaseAdd',function(){
            $('#DiseaseMedicineForm').trigger("reset");
			$('#Disease_id').attr("disabled", "true");
            $("#DiseaseMedicineModal").modal("toggle");
        });
        $('#DiseaseMedicineTable').DataTable({
            processing: true,
            serverSide: true,
            ajax: '{{ route('disease-list') }}',
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
        $('#DiseaseMedicineModal').modal('show');
		});

        $(document).on('click','.diseaseDelete', function (){
			var id = $(this).attr('id');
			$.ajax({
				type: 'get',
				url: '{{ url('delete-disease') }}/'+id ,
				success:function(data) {
					$('#DiseaseMedicineTable').DataTable().draw(true);
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
