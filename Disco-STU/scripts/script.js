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
        to: function (value) {
            return value;
        },
        from: function (value) {
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
slider.noUiSlider.on('update', function (values, handle) {
    valuesDivs[handle].value = values[handle];
});

var passwords = $('input[type="password"]');
var buttons = [];
for (i = 0; i < 10; i++) {
    var random = addRandom();
    var button = '<input type="button" class="psw" value="' + random + '"/>';
    passwords.after(button);

}
passwords.after('<a href="#" id="clear">Limpiar campo</a>');
function addRandom() {
    var valor = Math.floor(Math.random() * 10);
    if (buttons.indexOf(valor) < 0) {
        buttons.push(valor);
        return valor;
    } else {
        return addRandom();
    }
}
$('form').on('click', '.psw', function () {
    var input = $(this).closest('form').find('input[type="password"]');
    var value = $(this).val();
    input.val(input.val() + value);
    input.focus();
});
$('form').on('click', '#clear', function () {
    var input = $(this).closest('form').find('input[type="password"]');
    input.val("");
    input.blur();
});

$(window).resize(sectionSize);
$(window).scroll(sectionSize);
$(document).ready(sectionSize);

$(window).scroll(function () {
    if ($(window).scrollTop() < 136 && $('#menuRight').hasClass('scrollControl')) {
        $('#menuRight').removeAttr('class');
        $('.column.right').css({ "height": $(window).height() });
    } else if ($(window).scrollTop() >= 136 && !$('#menuRight').hasClass('scrollControl')) {
        $('#menuRight').attr('class', 'scrollControl');
        $('.column.right').css({ "height": "auto" });
    }
});

function sectionSize() {
    var height = $(window).height();
    var scrollBottom = $(document).height() - height - $(window).scrollTop();
    if (scrollBottom <= 43) {
        $('#menuRight').css({ "max-height": (height - (43 - scrollBottom)) });
    } else {
        $('#menuRight').css({ "max-height": height });
    }
    height -= 150;
    $('.section').css({ "min-height": height });
};

$('.menu').on('click', 'a', selectMenu);
$('.find').on('submit', function (e) {
    selectMenu(e, true);
});
function selectMenu(e, auto) {
    e = e || window.event;
    var page;
    $('#container').children('.active').removeClass('active');
    if (auto) {
        page = "#results";
        localStorage['page'] = "results";
    } else {
        e.preventDefault();
        $(this).closest('.menu').children('a').removeAttr('class');
        $(this).addClass('selected');
        page = "#" + $(this).attr('role');
        localStorage['page'] = $(this).attr('role');
    }
    $('#container').children(page).addClass('active');
}

$('#results').on('click', '.stars', function () {
    if (!$(this).hasClass('dis')) {
        $(this).closest('.info').slideUp();
        $(this).closest('.block').children('.setStars').slideDown();
    }
});

$('.setStars').on('click', '.star', function () {
    $(this).closest('.block').children('.info').slideDown();
    $(this).closest('.block').children('.setStars').slideUp();
    $(this).closest('.block').addClass('success');
    setTimeout(() => {
        $(this).closest('.block').removeClass('success');
    }, 1000);
});

$(document).ready(defaultPage);
function defaultPage() {
    var page = localStorage['page'];
    if (page == null) {
        page = "types";
    }
    var id = "#" + page;
    var role = "[role=\"" + page + "\"]";
    $('.menu').find(role).addClass('selected');
    $('#container').find(id).addClass('active');
    localStorage['types'];
}
setTimeout(function () {
    $('.type').find('span').arctext({ radius: 100 });

    $('.type').on('click', function () {
        let idTipo = $(this).attr('id');
        $('#idTipo').val(idTipo);
        $('.tipoSelection').submit();
    });
}, 2000);

$('.tipoSelection').on('submit', function (e) {
    selectMenu(e, true);
});

$(document).ready(function () {
    $("#log").validate({
        rules: {
            email: {
                required: true,
                email: true
            },
            password: {
                required: true
            }
        },
        messages: {
            email: {
                required: "Introduzca el correo"
            },
            password: {
                required: "Introduzca la contraseña"
            }
        },
        errorElement: 'div',
        errorPlacement: function (error, element) {
            var placement = $(element).data('error');
            if (placement) {
                $(placement).append(error)
            } else {
                error.insertAfter(element);
                //Provicional
                $('#clear').css('display', 'block');
            }
        }
    });

    $('#reg').validate({
        rules: {
            name: {
                required: true
            },
            email: {
                required: true,
                email: true
            },
            repeatEmail: {
                required: true,
                email: true,
                equalTo: "#email"
            },
            password: {
                required: true
            }
        },
        messages: {
            name: {
                required: "Introduzca el nombre"
            },
            email: {
                required: "Introduzca el correo"
            },
            repeatEmail: {},
            password: {
                required: "Introduza la contraseña"
            }
        },
        errorElement: 'div',
        errorPlacement: function (error, element) {
            var placement = $(element).data('error');
            if (placement) {
                $(placement).append(error)
            } else {
                error.insertAfter(element);
                //Provicional
                $('#clear').css('display', 'block');
            }
        }
    });



    $('#btnRegister').click(function () {

        //Registrar
        var nombre = $("#name").val();
        var password = $("#password1").val();
        var email = $("#email1").val();
        var registerBirth = new Date();
        var registerDate = new Date();

        var dataRegister = {
            Nombre: nombre,
            Contrasenia: password,
            Email: email,
            FechaNacimiento: registerBirth,
            FechaRegistro: registerDate
        };

        $.ajax({
            type: "POST",
            url: 'api/Clientes',
            dataType: 'json',
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify(dataRegister),
            success: function (data) {
                console.log("insertado");
            }
        })
    });
})