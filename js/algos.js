function LongestPhrase(phrases){
	
	do{
		if (phrases[0].length > phrases[1].length){
			phrases.slice(1);
		}else {
			phrases.slice(0);
		}


	}while (phrases.length > 1);
	return phrases;
}

words = ["long phrase","longest phrase","longer phrase"];

console.log (LongestPhrase(words));