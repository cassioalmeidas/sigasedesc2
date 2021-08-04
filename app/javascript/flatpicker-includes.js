import flatpickr from "flatpickr";
import { Portuguese } from "flatpickr/dist/l10n/pt";

$(document).on('turbolinks:load', function(){
  var flatpickerConfigs = {
    "locale": Portuguese,
    "dateFormat": "d/m/Y"
  };

  $('.datepicker').flatpickr(flatpickerConfigs);
})
