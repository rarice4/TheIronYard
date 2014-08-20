$(document).ready(function() {

$(".validate_hospital").click( function(event){
  

if ($("#hospital_name").val() === ("") ) {
  $(".message").show()
  $(".message").html("Name can't be blank");
  $(".message").fadeOut(4000)
  event.preventDefault();

  }
})





})
// alert("name or description can't be blank");