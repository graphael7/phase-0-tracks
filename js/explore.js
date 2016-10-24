/* split the given string into individual letters
create a loop to switch the order of those letters
*/

function reverse(any_word){
	reverseword = "";
	for (var i = any_word.length;i >= 0; i--){
		reverseword = reverseword + any_word[i];
	}
	return reverseword
}
console.log();
console.log(reverse("hello"));
