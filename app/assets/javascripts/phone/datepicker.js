// DP -> Phone Date Picker

//= require common/datepicker_common

if ( DP !== undefined) {
  alert("DP is already defined");
}

var DP = (function() {

  function initializeDatepicker() {
    var $datepickerSelector = $('[data-ui-behavior=calendar_date]');
    var datepickerInputs = document.querySelectorAll('[data-ui-behavior=calendar_date] input');

    if (!Modernizr.inputtypes.date) {
      Array.prototype.forEach.call(datepickerInputs, function(element, index, array) {
        element.type = 'text';
      });

      $datepickerSelector
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
  }

  function initializeTimepicker() {
    var $timepickerSelector = $('[data-ui-behavior=calendar_time]');
    var timepickerInputs = document.querySelectorAll('[data-ui-behavior=calendar_time] input');

    if (!Modernizr.inputtypes.time) {
      Array.prototype.forEach.call(timepickerInputs, function(element, index, array) {
        element.type = 'text';
      });

      $timepickerSelector
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
  }

  function initializeDateTimepicker() {
    var $dateTimepickerSelector = $('[data-ui-behavior=calendar_datetime]');
    var dateTimepickerInputs = document.querySelectorAll('[data-ui-behavior=calendar_datetime] input');

    if (!Modernizr.inputtypes.time) {
      Array.prototype.forEach.call(dateTimepickerInputs, function(element, index, array) {
        element.type = 'text';
      });

      $dateTimepickerSelector
        .calendar(
          {
            onChange: function (date, text, mode) {
              DPC.handleDateTimeValidation(date, text, mode)
            },
          }
        )
      ;
    }
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
