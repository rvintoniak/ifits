     //tooltip: 'Example tooltip',
//$('[class != bomb]')
jQuery(document).ready(function(){
            var myDate ={
                date1: {dat: new Date('03/22/2014'),title: "helloaaa", url: "sylka"},
                date2: {dat: new Date('04/23/2014'),title: "hell", url: "sylka"},
                date3: {dat: new Date('03/15/2014'),title: "he", url: "sylka"},
                date4: {dat: new Date('03/4/2014'),title: "hello3", url: "sylka"},
                date5: {dat: new Date('03/28/2014'),title: "hello4", url: "sylka"},
                date6: {dat: new Date('03/20/2014'),title: "hello5", url: "sylka"}
            } 

            $('#datepicker').datepicker({
                todayHighlight: true,
                beforeShowDay:function(d){
                    var c = '';
                    var title = '';
                    for(var index in myDate){
                        if(d.getTime() == myDate[index].dat.getTime()){
                            var c = 'active';
                            var title = myDate[index].title;
                            return {
                                classes:c,
                                tooltip:title,
                                urlEvent: 'http://www.tsn.ua'
                            }
                        }

                    }
                        return {
                                classes:' ',
                                tooltip:' '
                            }                    
                    

                }
            });
//            <li class="active"><a href="#red" data-toggle="tab">Новини</a></li>
//        <li><a href="#orange" data-toggle="tab">Події</a></li>
//        <li><a href="#picker" class="callpicker" data-toggle="tab">Календар подій</a></li>
            
        $($("a[data-toggle='tab']")).click(function(){
            if($(this).hasClass("callpicker")){
               //alert("tab");   
                $("#datepicker").show(1500); 
                //$(".tab-pane").
               }
            //$("#datepicker").show(1500);
            //$("#red .span9").removeClass("offset1");
        });
$(document).on('click','.clickEvent',function(e){window.location = this.href});


});