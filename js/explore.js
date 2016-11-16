// PSEUDOCODE

// function that takes a string as a parameter and reverses string
  // input: a "string"
  // steps:
    // for each letter in the string, starting with the last letter in the string...
      // add each letter to an empty string
      // decrement counter by 1 to move backwards through string
  // output: the string given to the function, reversed ("gnirts")

function reverse(string) {
  var reversedString = "";
  for (var i = string.length - 1; i >= 0; i--) {
    reversedString += string[i];
  }
  return reversedString;
}

var newString = reverse("hello");

if (newString.length == 5) {
  console.log(newString);
}
