// PSEUDOCODE

// function that takes a string as a parameter and reverses string
  // input: a "string"
  // steps:
    // for each letter in the string...
      // assign letter to -(index) of that letter
  // output: the string given to the function, reversed ("gnirts")

function reverse(string) {
  var reversedString = "";
  for (var i = string.length - 1; i >= 0; i--) {
    reversedString += string[i]
  }
  console.log(reversedString);
}

if ("hello".length == 5) {
  reverse("hello");
}
