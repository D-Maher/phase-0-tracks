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

  this.make = make;
  this.model = model;
  this.year = year;
  this.isGoodCar = isGoodCar;

  console.log("CAR INITIALIZATION COMPLETE");

  console.log("Our new car: ", this.make, this.model, this.year);

  this.vroom = function() { 
    if (this.isGoodCar) {
    console.log("*VROOOOMMM!!!*");
    } else {
    console.log("*the car broke down* :(");
    }

  }
}

console.log("Let's build a car ...");

var firstCar = new Car("Honda", "CRV", 2008, true);

console.log("Let's see what this baby can do!!!")
firstCar.vroom()


var oldCar = new Car("Volkswagen", "Jetta", 1986, false);

console.log("Let's see what this baby can do!!!")
oldCar.vroom()


var sweetCar = new Car("Tesla", "Model 3", 2017, true)

console.log("Let's see what this baby can do!!!")
sweetCar.vroom()