jQuery(document).ready(function () {


    $('.input-append.date').datepicker({
        format: "dd.mm.yyyy",
        beforeShowDay: function (d) {
            return{urlEvent: false}
        }});


    $('#timepick').timepicker({
        minuteStep: 1,
        appendWidgetTo: 'body',
        showSeconds: false,
        showMeridian: false,
        defaultTime: false
    });


});