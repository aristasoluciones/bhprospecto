var leaflet =  function () {
    var handleDatePickers = function () {
        if (jQuery().datepicker) {
            $('.date-picker').datepicker({
                language: 'es',
                rtl: App.isRTL(),
                orientation: "left",
                autoclose: true,
                format: 'yyyy-mm-dd',
                todayBtn: 'linked',
                todayHighlight: true,
            });
        }
    }
    return {
        //main function to initiate the module
        init: function () {
            handleDatePickers();
        }
    };
}();

$(document).ready(function () {
        leaflet.init();
    }
);