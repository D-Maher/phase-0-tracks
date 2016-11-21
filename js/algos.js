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


function findLongest(arr) {
  var wordLengths = [];
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
      return arr[k];
    }
  }
}

console.log(findLongest(words));


// ---------------------------------------------------
// ---------------------------------------------------


// Release 1: Find a key-value match

// PSEUDO
  // setup: declare a few different objects with different key-value combinations

  // declare kvMatch function
    // input: two JS objects
    // steps:
      // grab array of keys from each object and set each array to a variable
      // if the first key of one object matches a key in the other...
        // add that key to an array that will hold matched keys
      // compare the values associated with each key within the matched keys array, for each object
        // if the values match...
          // return true
        // otherwise... 
          // return false
    // output: true or false

var harry = {house: "Gryffindor", faveSpell: "Expelliarmus", studious: false};

var ron = {house: "Gryffindor", faveSpell: "Lumos", studious: false};

var hermione = {house: "Gryffindor", faveSpell: "Wingardium Leviosa", studious: true};

var draco = {house: "Slytherin", faveSpell: "Crucio", studious: false};

var cedric = {house: "Hufflepuff", faveSpell: "Accio", studious: true};

var jonSnow = {bastard: true, home: "Winterfell", house: "Stark"};


function kvMatch(object1, object2) {
  var keys1 = Object.keys(object1);
  var keys2 = Object.keys(object2);
  var allMatchedKeys = [];
  for (var i = 0; i < keys1.length; i++) {
    for (var j = 0; j < keys2.length; j++) {
      if (keys1[i] == keys2[j]) {
        allMatchedKeys.push(keys1[i]);
      }
    }
  }
  var matched = false;
    for (var k = 0; k < allMatchedKeys.length; k++) {
      var prop = allMatchedKeys[k];
      if ((object1[prop]) == (object2[prop])) {
        matched = true;
      }
    }
  return matched;
}

console.log(kvMatch(harry, ron));

console.log(kvMatch(harry, draco));

console.log(kvMatch(hermione, cedric));

console.log(kvMatch(harry, jonSnow));


// ---------------------------------------------------
// ---------------------------------------------------


// Release 2: Generate Random Test Data

// PSEUDO
  // declare function randomWords
    // input: integer (for number of words in array)
    // steps:
      // declare an empty array to which strings will be added
      // set up a loop that will run a number of times equal to the integer passed into the method:
        // create a word by running a loop a random number of times (between 1 and 10 times, decided randomly)
          // generate a random integer between 97 and 122 (lowercase letter decimals)
          // convert each integer to a character
          // add that character to a word-building array
          // join the array of random characters into a single word
        // add the word to the strings array
    // output: an array with specified length from input

function randomWords(integer) {
  var words = [];
  for (var i = 0; i < integer; i++) {
    var wordArray = [];
    var wordLength = Math.floor((Math.random() * 10) + 1);
    for (var j = 0; j < wordLength; j++) {
      var lowercaseDecimal = Math.floor((Math.random() * (122 - 97 + 1) + 97));
      var addLetter = String.fromCharCode(lowercaseDecimal);
      wordArray.push(addLetter);
      var singleWord = wordArray.join("");
    }
    words.push(singleWord);
  }
  return words;
}


for (var n = 0; n < 10; n++) {
  var testArray = randomWords(4);

  console.log(testArray);

  console.log("The longest word in the array above is: " + findLongest(testArray))
}