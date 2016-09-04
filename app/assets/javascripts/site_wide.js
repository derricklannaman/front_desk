$(document).on('ready page:load', function() {
  clearParentalInputs();
  // $('.inner-action-panel').hover(backlitOn, backlitOff);
});

function clearParentalInputs() {
  if(document.location.pathname == "/patient_intake_steps/step_2" ) {
    var inputs =  $('.parental-input');

    inputs.each(function(){
      $(this).val('');
    })
  }
}
