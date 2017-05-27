$(document).ready(function() {

    $("#btn1").on('click', function(){
    	$("#danny").slideUp(1000).delay(1000).slideDown(1000)
    });

    $("#btn2").on('click', function(){
			$("#j").fadeToggle(1000).fadeToggle(1000);
    });
    
    $("#btn3").on('click', function(){
    	$("#marks").toggle(1000).toggle(1000);
    });
});