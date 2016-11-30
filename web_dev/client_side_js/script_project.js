
function shrinkRotateImage() {
  var mainImage = document.getElementById("main-image-wrap").firstElementChild;
  mainImage.style.transform = "rotate(-10deg)";
  mainImage.style.width = "20%";
}

shrinkRotateImage();