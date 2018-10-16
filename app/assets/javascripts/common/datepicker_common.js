// DPC -> Date Picker Common

if (DPC !== undefined) {
  alert("DPC is already defined");
}

var DPC = (function() {

  function handleDateValidation(date, text, mode) {
    var dateField = $('[data-ui-behavior=calendar_date] input')
    var dateFieldName = dateField.data('fv-field')

    if (dateFieldName !== undefined) {
      var fv = $('[data-ui-behavior=calendar_date]').parents('.ui.form').data("formValidation")

      if (text === "") {
        fv.enableFieldValidators(dateFieldName, true).revalidateField(dateFieldName);
      } else {
        fv.enableFieldValidators(dateFieldName, false).revalidateField(dateFieldName);
      }
    }
  }

  function handleTimeValidation(date, text, mode) {
    var timeField = $('[data-ui-behavior=calendar_time] input')
    var timeFieldName = timeField.data('fv-field')

    if (timeFieldName !== undefined) {
      var fv = $('[data-ui-behavior=calendar_time]').parents('.ui.form').data("formValidation")

      if (text === "") {
        fv.enableFieldValidators(timeFieldName, true).revalidateField(timeFieldName);
      } else {
        fv.enableFieldValidators(timeFieldName, false).revalidateField(timeFieldName);
      }
    }
  }

  function handleDateTimeValidation(date, text, mode) {
    var timeField = $('[data-ui-behavior=calendar_datetime] input')
    var timeFieldName = timeField.data('fv-field')

    if (timeFieldName !== undefined) {
      var fv = $('[data-ui-behavior=calendar_datetime]').parents('.ui.form').data("formValidation")

      if (text === "") {
        fv.enableFieldValidators(timeFieldName, true).revalidateField(timeFieldName);
      } else {
        fv.enableFieldValidators(timeFieldName, false).revalidateField(timeFieldName);
      }
    }
  }


  return {
    "handleDateValidation": handleDateValidation,
    "handleTimeValidation": handleTimeValidation,
    "handleDateTimeValidation": handleDateTimeValidation
  };

})();
