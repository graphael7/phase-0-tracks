console.log("The script is running2!");

var listchanges = document.getElementsByTagName('li');
console.log(listchanges);
var listchange = listchanges[0];
console.log(listchange);
listchange.style.font = "25px arial, sans-serif"; 
var newParagraph = document.createElement('p');
var paraText = document.createTextNode("This is Hella awesome");
newParagraph.appendChild(paraText);
var firstparagraph = document.getElementById('about-my-pet');
console.log(firstparagraph);
firstparagraph.appendChild(newParagraph);

firstparagraph.addEventListener("click", function(event){console.log("did it");});

