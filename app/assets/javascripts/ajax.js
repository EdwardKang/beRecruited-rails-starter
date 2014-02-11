$(document).ready(function(event){
	$('#team-select').on("ajax:success", function(event, data){
		var $div = $('.table');
		$div.empty();
		$div.append(data);
	});
	
});