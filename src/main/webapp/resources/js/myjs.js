function datePicker(myDate) {
    $('#datepicker').datepicker({
        todayHighlight: true,
        beforeShowDay: function (d) {
            var c = '';
            var title = '';
            for (var index in myDate) {
                if (d.getTime() == myDate[index].dat.getTime()) {
                    var c = 'active';
                    var title = myDate[index].title;
                    var url = myDate[index].url;
                    return {
                        classes: c,
                        tooltip: title,
                        urlEvent: url
                    }
                }

            }
            return {
                classes: ' ',
                tooltip: ' '
            }


        }
    });
};
jQuery(document).ready(function () {

    $("#rate2").rating("#", {maxvalue: 5, curvalue: 0});
    $('#tabs').tab();
//            <li class="active"><a href="#red" data-toggle="tab">Новини</a></li>
//        <li><a href="#orange" data-toggle="tab">Події</a></li>
//        <li><a href="#picker" class="callpicker" data-toggle="tab">Календар подій</a></li>

    $("a[data-toggle='tab']").click(function () {
        if ($(this).hasClass("callpicker")) {
            //alert("tab");
            $("#datepicker").show(1500);
            //$(".tab-pane").
        }
        //$("#datepicker").show(1500);
        //$("#red .span9").removeClass("offset1");
    });
    $(document).on('click', '.clickEvent', function (e) {
        window.location = this.href
    });

    (function () {
        var showAllItems = function () {
            var items = document.querySelectorAll('.flip3D');
            var l = items.length;
            console.log('showall: ' + l);
            $('.flip3D').fadeIn(1500);
            // for(var i=0;i<l;i++){
            // $(items[i]).fadeIn(1500);
            // //$(items[i]).show(1500);
            // //items[i].style.display = 'block';
            // }
        }
        var showAllItemsContaining = function (v) {
            var items = document.querySelectorAll('.frontFooter span');
            var l = items.length;
            console.log('showall cont: ' + l);
            var regexpPattern = new RegExp(v, 'i');
            for (var i = 0; i < l; i++) {
                if (!regexpPattern.test(items[i].textContent)) {
                    //alert(items[i]);
                    //items[i].style.display = 'none';
                    $(items[i]).parent().parent().parent().hide(1000);
                    //items[i].style.backgroundColor = 'red';
                } else {
                    $(items[i]).parent().parent().parent().fadeIn(1500);
                    console.log(i);
                    //$(items[i]).parent().parent().fadeIn(1500);
                    //items[i].style.backgroundColor = 'white';
                }
            }
        }

        var inp = document.getElementById('search');
        if (inp) {
            inp.addEventListener('keyup', function () {
                var v = inp.value;
                if (v.replace(/^\s+|\s+$/g, '') === '') {
                    showAllItems();
                } else {
                    showAllItemsContaining(v);
                }
            });
        }
    })();

});