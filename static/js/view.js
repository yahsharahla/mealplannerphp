$(function(){
//    $("#user-register").hide();
    $("#reg").click(loadReg);
//    $("#reg").css('cursor', 'pointer');
});

function loadReg(){
    $("#user-login").hide( 1000 );
    $("#user-register").show( 1000 );
};