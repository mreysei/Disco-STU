var slider = $('#sliderAgno')[0];
noUiSlider.create(slider, {
    start: [1970, 1990],
    connect: true,
    step: 1,
	tooltips: true,
	pips: { 
		mode: 'values',
		values: [1970, 1975, 1980, 1985, 1990],
		density: 4
	},
    format: {
	  to: function ( value ) {
		return value;
	  },
	  from: function ( value ) {
		return value;
	  }
	},
    range: {
        'min': 1970,
        'max': 1990
    }
});
var valuesDivs = [
    $('#firstYear')[0],
	$('#lastYear')[0]
];
slider.noUiSlider.on('update', function( values, handle ) {
    valuesDivs[handle].value = values[handle];
});

var passwords = $('input[type="password"]');
var buttons = [];
for (i = 0; i < 10; i++){
    var random = addRandom();
    var button = '<input type="button" class="psw" value="'+random+'"/>';
    passwords.after(button);

}
passwords.after('<a href="#" id="clear">Limpiar campo</a>');
function addRandom() {
    var valor = Math.floor(Math.random() * 10);
    if (buttons.indexOf(valor) < 0){
        buttons.push(valor);
        return valor;
    } else {
        return addRandom();
    }
}
$('form').on('click', '.psw', function(){
    var input = $(this).closest('form').find('input[type="password"]');
    var value = $(this).val();
    input.val(input.val() + value);
    input.focus();
});
$('form').on('click', '#clear', function(){
    var input = $(this).closest('form').find('input[type="password"]');
    input.val("");
    input.blur();
});
$('.type').arctext({radius: 100});
$(window).scroll(function(){
    if ($(window).scrollTop() < 136  && $('#menuRight').hasClass('scrollControl')){
        $('#menuRight').removeAttr('class');
    } else if ($(window).scrollTop() >= 136  && !$('#menuRight').hasClass('scrollControl')){
        $('#menuRight').attr('class', 'scrollControl');
    }
});