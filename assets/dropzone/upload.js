$(document).ready(function(){
	$(".dropzone").dropzone({
	  url: baseURL + 'fileupload',
	  width: 640,
	  height: 460,
	  progressBarWidth: '100%',
	  maxFileSize: '5MB',
	  maxFiles: 1,
	  parallelUploads: 1,
		addRemoveLinks:true,
	})
});