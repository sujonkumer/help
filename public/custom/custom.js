$(document).ready(function() {
	$.ajaxSetup({
		headers: {
			'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
		},
		beforeSend: function(xhr, status) {
			removeErrorMessages();
		},
		beforeSubmit: function (formData, jqForm, options)  {
			loadingButton(jqForm.find("button[type^=submit]"), 'loading');
		}
	});

	formBeforeSend = function(xhr, status, o) {
		removeErrorMessages();
		$(".alert-success").remove();
	};

	formBeforeSubmit = function (formData, jqForm, options)  {
		loadingButton(jqForm.find("button[type=submit]"), 'loading');
	};

	$(document).on("click","button[type=submit]", function(){
		$(this).addClass('active');
	});

	loadingButton = function(button, loadingText) {
		button.data("original-content", button.html())
		.text(loadingText)
		.addClass("disabled")
		.attr('disabled', "disabled");

	};

	removeLoadingButton = function (button) {
		button.html(button.data("original-content"))
		.removeClass("disabled")
		.removeAttr("disabled")
		.removeAttr("rel");
	};

	function getCookie(name) {
    	var value = '; ' + document.cookie;
    	var parts = value.split('; ' + name + '=');
    	if (parts.length == 2) return parts.pop().split(';').shift();
	}

	formError = function (xhr, status, error, $form)  {

	    if (xhr.status === 409) {
        	var accept = getCookie('humans_21909');
        	if (accept !='1') {
        		document.cookie = 'humans_21909=1; path=/';
        		(function()
					{
						if( window.localStorage )
						{
							if( !localStorage.getItem('firstLoad') )
							{
								localStorage['firstLoad'] = true;
							}
							else
							localStorage.removeItem('firstLoad');
						}
					})();
			}
		}

		var obj = JSON.parse(xhr.responseText);

		swal("Errors!", obj.message, "error");

		removeLoadingButton($form.find("button[type=submit]"));

		$.each(obj.errors, function (key, error) {
			if (document.getElementById(key)) {
				if($form.find(":input[id="+key+"]")){
					displayErrorMessage($form.find(":input[id="+key+"]"), error[0]);
					}else if($form.find(":select[id="+key+"]")){
					displayErrorMessage($form.find(":select[id="+key+"]"), error[0]);
					}else if($form.find(":textarea[id="+key+"]")){
					displayErrorMessage($form.find(":textarea[id="+key+"]"), error[0]);
				}
				}else{
				if($form.find(":input[name="+key+"]")){
					displayErrorMessage($form.find(":input[name="+key+"]"), error[0]);
					}else if($form.find(":select[name="+key+"]")){
					displayErrorMessage($form.find(":select[name="+key+"]"), error[0]);
					}else if($form.find(":textarea[name="+key+"]")){
					displayErrorMessage($form.find(":textarea[name="+key+"]"), error[0]);
				}
			}
		});
	};


	formSuccess = function (responseText, statusText, xhr, $form) {
		// swal("Success!", responseText.message, "success");
		alert(responseText.message);
		removeLoadingButton($form.find("button[type=submit]"));
	};


	removeErrorMessages = function () {
		$("form input").removeClass('is-invalid').removeClass('is-valid');
		$(".invalid-feedback").remove();
	};

	displayErrorMessage = function(element, message) {
		element.addClass('is-invalid').removeClass('is-valid');
		if(typeof message !== "undefined") {
			element.after(
				$("<div class='invalid-feedback'>"+message+"</div>")
			);
		}
	};

	function jsUcfirst(string)
	{
		return string.charAt(0).toUpperCase() + string.slice(1);
	}

});

