$.cloudinary.config({ cloud_name: 'wayfare', api_key: '938894125126983' });

$(function() {
  $(".img-fetch").fetchify();
  $(".img-cloud").cloudinary();
});
