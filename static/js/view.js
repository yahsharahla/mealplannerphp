$(function(){
//    $("#user-register").hide();
    $("#reg").click(loadReg);
//    $("#reg").css('cursor', 'pointer');
//    $("#logout").click(logout);
});

function loadReg(){
    $("#user-login").hide( 1000 );
    $("#user-register").show( 1000 );
};

//function logout() {
//    window.href = "?controller=control&action=logout";
//}