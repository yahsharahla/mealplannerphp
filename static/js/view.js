$(function(){
    $("#reg").click(loadReg);
    $("#addmeal").click(showMeal);
    $("#genPlan").click(showPlan);
});

function loadReg(){
    $("#user-login").hide( 1000 );
    $("#user-register").show( 1000 );
};

function showMeal(){
    $("#toChoose").hide( 1000 );
    $("#selectIngredients").show( 1000 );
};

function showPlan(){
    $("#toChoose").hide( 1000 );
//    $("#selectIngredients").hide( 1000 );
    $("#genmPlan").show( 1000 );
};

