ta view:

.form-group
                #datetimepicker9.input-group.date
                  = f.input :date1, as: :string, input_html: { class: "form-control" }, label: false, required: true
                  %span.input-group-addon
                    %span.glyphicon.glyphicon-calendar


js:

$(function () {
  $.fn.datetimepicker.dates
  $('#datetimepicker9').datetimepicker({
    language: 'fr',
    rtl: true,
    format: "dd MM yyyy",
    minView: 'month',
    autoclose: true,
    startDate: moment(new Date()).add(1,'days').format("YYYY-MM-DD")
    //daysOfWeekDisabled:[0]
  });
  $('#datetimepicker10').datetimepicker({
    language: 'fr',
    rtl: true,
    format: "dd MM yyyy",
    minView: 'month',
    autoclose: true
    //daysOfWeekDisabled:[0]
  });
  $("#datetimepicker9").datetimepicker().on('changeDate', function(ev){
    $('#datetimepicker10').datetimepicker('setStartDate', moment(ev.date).add(1,'days').format("YYYY-MM-DD"));
    $('#datetimepicker10').datetimepicker('setEndDate', moment(ev.date).add(16,'days').format("YYYY-MM-DD"));
    $('#time1').css("display","inline");
    $('#time1 select').removeAttr("disabled");
    $('#time2 select').attr("disabled", "disabled");
    //if (moment(ev.date).format("ddd") != "Sat"){
    //  $('#time1').css("display","inline");
    //  $('#time1 select').removeAttr("disabled");
    //  $('#time2 select').attr("disabled", "disabled");
    //}
    //else{
    //  $('#time1').css("display", "none");
    //  $('#time1 select').attr("disabled", "disabled");
    //}
    //if (moment(ev.date).format("ddd") == "Sat"){
    //  $('#time2').css("display","inline");
    //  $('#time2 select').removeAttr("disabled");
    //  $('#time1 select').attr("disabled", "disabled");
    //}
    //else{
    //  $('#time2').css("display", "none");
    //  $('#time2 select').attr("disabled", "disabled");
    //}
  });
  $("#datetimepicker10").datetimepicker().on('changeDate', function(ev){
    $('#datetimepicker9').datetimepicker('setEndDate', moment(ev.date).subtract(1,'days').format("YYYY-MM-DD"));
    $('#time3').css("display","inline");
    $('#time3 select').removeAttr("disabled");
    $('#time4 select').attr("disabled", "disabled");
    //if (moment(ev.date).format("ddd") != "Sat"){
    //  $('#time3').css("display","inline");
    //  $('#time3 select').removeAttr("disabled");
    //  $('#time4 select').attr("disabled", "disabled");
    //}
    //else{
    //  $('#time3').css("display", "none");
    //  $('#time3 select').attr("disabled", "disabled");
    //}
    //if (moment(ev.date).format("ddd") == "Sat"){
    //  $('#time4').css("display","inline");
    //  $('#time4 select').removeAttr("disabled");
    //  $('#time3 select').attr("disabled", "disabled");
    //}
    //else{
    //  $('#time4').css("display", "none");
    //  $('#time4 select').attr("disabled", "disabled");
    //}
  });
});