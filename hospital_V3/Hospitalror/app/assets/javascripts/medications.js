$(document).ready(function() {

$(".validate_medication").click( function(event){
  

if ($("#medication_name").val() === ("") ) {
  $(".message").show()
  $(".message").html("Name can't be blank");
  $(".message").fadeOut(4000)
  event.preventDefault();

  }
})





})
