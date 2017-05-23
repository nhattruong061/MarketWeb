$(document).ready(function () {
	    $("#btnSubmitImages").click(function (event) {
	    	event.preventDefault();
	        fire_ajax_submit();

	    });
	});

	function fire_ajax_submit() {

	    // Get form
	    var form = $('#product_form')[0];
	    var data = new FormData(form);

	    data.append("CustomField", "This is some extra data, testing");

	    $.ajax({
	        type: "POST",
	        url: "/api/upload/multi",
	        data: data,
	        //http://api.jquery.com/jQuery.ajax/
	        //https://developer.mozilla.org/en-US/docs/Web/API/FormData/Using_FormData_Objects
	        processData: false, //prevent jQuery from automatically transforming the data into a query string
	        contentType: false,
	        cache: false,
	        timeout: 600000,
	        success: function (data) {
	        	document.getElementById("images").value=data;
	        },
	    });

	}