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




});

