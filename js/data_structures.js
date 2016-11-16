// Release 0

var horseColors = ["blue", "red", "yellow", "green"];

var horseNames = ["Ed", "Bob", "Bill", "Joe"];

console.log(horseColors);

console.log(horseNames);


horseColors.push("purple");

horseNames.push("Jim");

console.log(horseColors);

console.log(horseNames);


// Release 1

var horse = { horseNames: horseColors };

for (var i = 0; i < horseNames.length; i++) {
  console.log(horseNames[i] + " is " + horse.horseNames[i]);
}


// Release 2

function Car(make, model, year, isGoodCar) {
  console.log("Our new car: ", this);

  this.make = make;
  this.model = model;
  this.year = year;
  this.isGoodCar = isGoodCar;

  this.vroom = function() { console.log("*VROOOOMMM!!!*"); }
  ;

  console.log("CAR INITIALIZATION COMPLETE");

}