function LongestPhrase(phrases){
	var size_of_phrase = phrases.length - 1
	do{
		size_of_phrase = phrases.length - 1
		console
		if (phrases[0].length > phrases[size_of_phrase].length){
			phrases.pop();
		}else {
			phrases.shift();
		}


	}while (phrases.length > 1);
	return phrases;
}

words = ["long phrase","longest phrase","longer phrase"];
words1 = ["long phraseffhm","longehfmhfmst phrase","longer fhmhfphrase"];
words2 = ["long hhphrase","longest phmrase","longerxfmmf phrase"];
console.log (LongestPhrase(words));
console.log (LongestPhrase(words1));
console.log (LongestPhrase(words2));