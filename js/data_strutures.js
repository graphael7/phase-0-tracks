var colors = ["blue", "red", "green", "black"];
var names = ["Jerry", "Bob", "Eleanor", "Tiffany"];

colors.push ("yellow");
names.push ("Ed");

// Create a hash by looping through the 2 arrays
var horses = {};
for(var i = 0; i < colors.length;i++){
	horses[names[i]] = colors[i];
}

console.log(horses);

function Car(speed,color,isAutomatic){
	this.speed = speed;
	this.color = color;
	this.isAutomatic = isAutomatic;
	
	this.horn =function(){console.log("Beep beep!");};
	
}


var jeep = new Car(100,"Black",false);
console.log(jeep);
jeep.horn();

var subaru = new Car(120,"Gray", true);
console.log(subaru);
subaru.horn();