 //you will probably use jQuery and something like: $('body').css('background-image', "url('" + search.results[rnd]['url'] + "')");
 $(document).on("load",imageLoad());
function imageLoad() {
    var index = Math.floor(Math.random() * 11) + 1;
    $('.image_box').css('background-image', "url(../img/img-" + index + ".png");
}
