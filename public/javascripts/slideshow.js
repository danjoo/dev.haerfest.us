
//initialize looped slider

$(function(){
  $('#loopedslider').loopedSlider();
});

//initialize light box
$(function() {

    $('#A1 a').lightBox();
    $('#A2 a').lightBox();
    $('#A3 a').lightBox();
    $('#A4 a').lightBox();
    $('#B1 a').lightBox();
    $('#B5 a').lightBox();
    $('#B6 a').lightBox();
    $('#B7 a').lightBox();

});

//fade in container section to avoid choppy load
$(function() {
    $(".wrapper").hide().fadeIn(700);
});

//fade in header topnav section to avoid choppy load equals to .ready()
//$(function() {

    //$(".header img").show();
    //$(".topnav img").fadeIn(200);

//});