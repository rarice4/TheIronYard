$(document).on("click", ".change_workflow", function() {
  console.log("gggg")
  $.ajax({
    type: "PATCH",
    url: $(this).attr("que_url"),
    dataType: "script"
  })
});
$(".flash_message").fadeOut(2000)

$(document).on("click", ".remove_student_from_list", function() {
  console.log("remove")
  var student_id = $(this).attr("student_id")
  $('li.student_' + student_id).remove()
  $.ajax({
    type: "Delete",
    url: $(this).attr("remove_path"),
    dataType: "script"
  })
});

