// DP -> Desktop Date Picker

//= require common/datepicker_common

if ( DP !== undefined) {
  alert("DP is already defined");
}

var DP = (function() {

  function initializeDatepicker() {
    $('[data-ui-behavior=calendar_date]')
      .calendar(
        {
          type: 'date',
          today: true,
          onChange: function (date, text, mode) {
            DPC.handleDateValidation(date, text, mode)
          },
        }
      )
    ;
  }

  function initializeTimepicker() {
    $('[data-ui-behavior=calendar_time]')
      .calendar(
        {
          type: 'time',
          onChange: function (date, text, mode) {
            DPC.handleTimeValidation(date, text, mode)
          },
        }
      )
    ;
  }

  function initializeDateTimepicker() {
    $('[data-ui-behavior=calendar_datetime]')
      .calendar(
        {
          onChange: function (date, text, mode) {
            DPC.handleDateTimeValidation(date, text, mode)
          },
        }
      )
    ;
  }


  return {
    "initializeDatepicker": initializeDatepicker,
    "initializeTimepicker": initializeTimepicker,
    "initializeDateTimepicker": initializeDateTimepicker
  };

})();

document.addEventListener('turbolinks:load', function() {
  DP.initializeTimepicker();
  DP.initializeDatepicker();
  DP.initializeDateTimepicker();
});

$(document).ajaxSuccess(function() {
  if ($('[data-ui-behavior=calendar_date]').length) {
    DP.initializeDatepicker();
  }

  if ($('[data-ui-behavior=calendar_time]').length) {
    DP.initializeTimepicker();
  }

  if ($('[data-ui-behavior=calendar_datetime]').length) {
    DP.initializeDateTimepicker();
  }

});
