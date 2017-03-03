var busqueda = "";
var firstYear = 1970;
var lastYear = 1990;

$(document).ready(function () {
    var form = $(".find");
    form.on("submit", function () {
        busqueda = form.find("#search").val();
        firstYear = form.find("#firstYear").val();
        lastYear = form.find("#lastYear").val();
    })
})