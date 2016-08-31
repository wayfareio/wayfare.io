$(function() {
  $(".nav-side").on("click", function(e) {
    if ($(".nav-side").hasClass("collapsed") && $(".nav-side-toggler").is(':visible')) {
      e.preventDefault();
      $(".nav-side").removeClass("collapsed").addClass("expanded");
    } else {
      $(".nav-side").removeClass("expanded").addClass("collapsed");
    }
  });
});
