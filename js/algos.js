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

function Match(testvalue1,testvalue2){
	keys_value1 = Object.keys(testvalue1);
	keys_value2 = Object.keys(testvalue2);
	// for (var i = 0; i < keys_value1.length; i++){
	// 	for (var j = 0; j < keys_value2.length; j++){
	// 		if (keys_value1[i] == keys_value2[j]){
	// 		return true;
	// 		}
	// 	}
	// }

	for (var x = 0; x < keys_value1.length; x++){
		for (var y = 0; y < keys_value2.length; y++){
			if (testvalue1[keys_value1[x]] == testvalue2[keys_value2[y]]){
			return true;
			}
		}
	}

	return false
}

function Listofwords(amount){
	whole_list = [];
	
    var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
	for (var x = 0; x < amount; x++){
		var text = "";
		length = Math.floor(Math.random() * 9) + 1;
		for( var i=0; i < length; i++ ){
        text += possible.charAt(Math.floor(Math.random() * possible.length));
    	}
    	whole_list.push(text);
	}

	return whole_list;
}

words = ["long phrase","longest phrase","longer phrase"];
words1 = ["long phraseffhm","longehfmhfmst phrase","longer fhmhfphrase"];
words2 = ["long hhphrase","longest phmrase","longerxfmmf phrase"];
console.log (LongestPhrase(words));
console.log (LongestPhrase(words1));
console.log (LongestPhrase(words2));


entry1 = {name: "Steven", age: 54}
entry2 = {name: "Tamir", age: 54}

entry3 = {name: "Steven", age: 54}
entry4 = {name: "Tamir", age: 52}

entry5 = {name: "Tamir", age: 24}
entry6 = {name: "Tamir", age: 52}

console.log(Match(entry1,entry2));
console.log(Match(entry3,entry4));
console.log(Match(entry5,entry6));

console.log(Listofwords(3));
console.log(Listofwords(7));
console.log(Listofwords(13));