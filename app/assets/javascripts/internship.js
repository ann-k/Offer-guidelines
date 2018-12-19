// $(document).ready(function () {
//   $('#datetimepicker1').data("DateTimePicker").FUNCTION()
//
//   $(function () {
//     $('#datetimepicker1').datetimepicker();
//   })
//
//   $('.datepicker').datepicker()
// });


/* globals daterangepicker, $ */
"use strict";

$(function(){
  $('[data-behavior=daterangepicker]').daterangepicker({
    locale: { format: 'DD/MM/YYYY'},
    cancelLabel: 'Clear'
  });

  $('[data-behavior=daterangepicker]').on('cancel.daterangepicker', function(){
    $(this).val(' ');
  });

});
