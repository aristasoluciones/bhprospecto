var urlLoc = document.location.hostname;
switch (urlLoc) {
    case 'localhost':
        var WEB_ROOT = "http://" + urlLoc + "/bhprospecto";
        break;
    default:
        var WEB_ROOT = "http://" + urlLoc + "/sysprospect";
        break;
}

$(document).ready(function () {
    toastr.options = {
        "closeButton": true,
        "debug": false,
        "newestOnTop": false,
        "progressBar": true,
        "positionClass": "toast-top-right",
        "preventDuplicates": true,
        "onclick": null,
        "showDuration": "300",
        "hideDuration": "1000",
        "timeOut": "5000",
        "extendedTimeOut": "1000",
        "showEasing": "swing",
        "hideEasing": "linear",
        "showMethod": "fadeIn",
        "hideMethod": "fadeOut"
    }
});