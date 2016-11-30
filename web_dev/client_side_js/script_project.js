var mainImage = document.getElementById("main-image-wrap").firstElementChild;

function shrinkRotateImage() {
  mainImage.style.transform = "rotate(-10deg)";
  mainImage.style.width = "20%";
}

shrinkRotateImage();


function blowUpUnrotateImage(event) {
  event.target.parentElement.style.width = "90%";
  event.target.style.width = "100%"
  event.target.style.transform = "rotate(0deg)"
}

mainImage.addEventListener("dblclick", blowUpUnrotateImage);