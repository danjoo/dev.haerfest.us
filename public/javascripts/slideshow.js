
//initialize looped slider

$(function(){
  $('#loopedslider').loopedSlider();
});

//initialize light box
$(function() {

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