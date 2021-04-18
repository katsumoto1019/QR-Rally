/**
 * File : eventAdd.js
 * 
 * This file contain the validation of add user form
 * 
 * Using validation plugin : jquery.validate.js
 * 
 * @author Kishor Mali
 */

$(document).ready(function(){
	
	var eventAddForm = $("#eventAdd");
	
	var validator = eventAddForm.validate({
		rules:{
			eventTitle :{ required : true },
			fromDate :{required : true}
		},
		messages:{
			eventTitle :{ required : "This field is required" },
			fromDate :{ required : "This field is required" }
		}
	});
});
