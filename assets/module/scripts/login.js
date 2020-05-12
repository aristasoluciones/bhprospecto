$(window).ready(function () {
    $('#email').bind("keypress", function (event) {
        var key = event.which || event.keyCode;
        if (key == 13) DoLogin();
    })

    $('#password').bind("keypress", function (event) {
        var key = event.which || event.keyCode;
        if (key == 13) DoLogin();
    })

    $('#btn_login').on("click", DoLogin)

});

function DoLogin() {
    $.ajax({
        method: "POST",
        url: WEB_ROOT + "/ajax/login.php",
        data: $("#frmLogin").serialize(true),
        dataType: 'json',
        success: function (response) {
            /*if(response.status)
                window.location =  WEB_ROOT+"/homepage";*/

;            toastr[response.status ? 'success' : 'error'](response.message);
        },
        error: function () {
        }
    });

}//DoLogin