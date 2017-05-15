// -loop needs some where to begin comparing, so we start
// 	the currentLength at 0.
// -declare longest variable to store the length of the array
// 	if the length is greater than the currentLength.
// -the loop will always run for every element in the array 
//  and execute the if statement at least once because the 
//  currentLength is initialized to 0.
function LongestPhrase(array){
	var currentLength = 0;
	var longest;
	for(var i = 0; i < array.length; i++){
		if(array[i].length > currentLength ){
			currentLength  = array[i].length;
			longest = array[i];
		}
	}
	return longest
}

newArray = ["Zach Rudolph", "Danny Marks", "Sam"];

console.log(LongestPhrase(newArray));

