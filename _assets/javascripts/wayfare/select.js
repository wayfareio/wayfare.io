$(function(){
  $("select.plan-selector").select2({
    minimumResultsForSearch: Infinity,
    placeholder: "Select a price plan"
  }).on('change', function(e) {
    if ($(e.target).val() == '') {
      $(".plan-rates").hide();
      $(".plan-rates-empty").show();
    } else {
      $(".plan-rates").hide();
      $(".plan-rates-" + $(e.target).val()).show();
    }
  });
});
