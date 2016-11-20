// Release 0: Find the Longest Phrase

// PSEUDO
  // declare findLongest function
    // input: array of words/phrases
    // steps:
      // - find the length of each word or phrase and add that length to a new array of word/phrase lengths (integers)
      // - sort the array of lengths from largest to smallest using bubble sort
        // - swapping adjacent lengths if one length is less than the next length
      // return the word/phrase in the initial array whose length matches the first integer in the lengths array
    // output: the longest phrase in the inputted array

var words = ["word", "woord", "wooooooorrrrrd", "wooooord", "word"];

var wordLengths = [];

function findLongest(arr) {
  for (var i = 0; i < arr.length; i++) {
    wordLengths.push(arr[i].length);
  }
  var swapped;
  do {
    swapped = false;
    for (var j = 0; j < wordLengths.length - 1; j++) {
      if (wordLengths[j] < wordLengths[j + 1]) {
        var temp = wordLengths[j + 1];
        wordLengths[j + 1] = wordLengths[j];
        wordLengths[j] = temp;
        swapped = true;
      }
    }
  } while (swapped);
  for (var k = 0; k < arr.length; k++) {
    if (arr[k].length == wordLengths[0]) {
      console.log(arr[k]);
    }
  }
}

findLongest(words)