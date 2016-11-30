console.log("The script is running!");


// function addPinkBorder() { // this is refactored below
//   var photo = document.getElementById("lizard-photo");
//   photo.style.border = "2px solid pink";
// }

function addPinkBorder(event) {
  console.log("click happened! here's the click event:");
  console.log(event);
  event.target.style.border = "2px solid pink";
}

var photo = document.getElementById("lizard-photo");
photo.addEventListener("click", addPinkBorder);