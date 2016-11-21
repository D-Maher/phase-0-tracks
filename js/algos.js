// Release 0: Find the Longest Phrase

// PSEUDO
  // declare findLongest function
    // input: array of words/phrases
    // steps:
      // - find the length of each word or phrase and add that length to a new array of word/phrase lengths (integers)
      // - sort the array of lengths from largest to smallest using bubble sort...
        // - swapping adjacent lengths if one length is less than the next length
      // return the word/phrase in the initial array whose length matches the first integer in the lengths array
    // output: the longest phrase in the inputted array

var words = ["word", "woord", "wooooooorrrrrd", "wooooord", "word", "this is by far the longest element in this array"];

var wordLengths = [];

function findLongest(arr) {
  for (var i = 0; i < arr.length; i++) {
    wordLengths.push(arr[i].length);
  }
  var swapped;
  do { // bubble sort
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


// ---------------------------------------------------
// ---------------------------------------------------


// Release 1: Find a key-value match

// PSEUDO
  // setup: declare a few different objects with different key-value combinations

  // declare keyMatch function
    // input: two JS objects
    // steps:
      // grab array of keys from each object and set each array to a variable
      // if the first key of one object matches a key in the other...
        // set that key equal to a variable matchedKey
      // otherwise...
        // return false
    // output: value of matchedKey 

  // declare valueMatch function
    // input: matchedKey
    // steps: 
      // compare the values associated with the matched key (stored in matchedKey) for each object
        // if the values match...
          // return true
        // otherwise... 
          // return false
    // output: true or false

  // declare kvMatch function
    // combines two functions above
    // output = true or false

var harry = {house: "Gryffindor", faveSpell: "Expelliarmus", studious: false};

var ron = {house: "Gryffindor", faveSpell: "Lumos", studious: false};

var hermione = {house: "Gryffindor", faveSpell: "Wingardium Leviosa", studious: true};

var draco = {house: "Slytherin", faveSpell: "Crucio", studious: false};

var cedric = {house: "Hufflepuff", faveSpell: "Accio", studious: true};

var jonSnow = {bastard: true, home: "the North", house: "Stark",}

function keyMatch(object1, object2) {
  var keys1 = Object.keys(object1);
  var keys2 = Object.keys(object2);
  for (var i = 0; i < keys1.length; i++) {
    for (var j = 0; j < keys2.length; j++) {
      if (keys1[i] == keys2[j]) {
        var matchedKey = keys1[i];
        return matchedKey;
      } else {
        return false;
      }
    }
  }
}

function valueMatch(matchedKey) {
  if (object1[matchedKey] == object2[matchedKey]) {
    return true;
  } else {
    return false;
  }
}

console.log(keyMatch(hermione, harry));