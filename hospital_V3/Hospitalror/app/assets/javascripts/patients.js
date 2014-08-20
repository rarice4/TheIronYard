$(document).ready(function() {

$(".validate_patient").click( function(event){
  

if ($("#patient_first_name").val() === ("") ) {
  $(".message").show()
  $(".message").html("Name can't be blank");
  $(".message").fadeOut(4000)
  event.preventDefault();

  }
})

$(".get_patients").click( function() {
    $.ajax({
      url: "/hospitals/ajax/patients",
      type: "GET",
      dataType: "script"
    })
  })





$(".search_patients").click( function() {
    console.log("hi");
    console.log($('.patients_search').val())
    $.ajax({
      url: "/patients",
      dataType: "script",
      type: "GET",
      data: {q: $('.patients_search').val()}
    })
  })



})
