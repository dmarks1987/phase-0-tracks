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


// -iterate through both objects to determine if they  have
//  matching keys and values.
// -IF there are matching values return true.
// -ELSE return false.
function MatchingPairs(object1, object2){
	for(var i = 0; i < object1.length; i++){
		for(var j = 0; j < object2.length; j++){
			if(object1[i] == object2[j]){
				return true;
			}else{
				return false;
			}
		}
	}
}

function MatchingPairs2(object1, object2){
	var matching = null;
	for(var key in object1){
		for(var key2 in object2){
			if(Object.keys(object1) === Object.keys(object2)){
				matching = true;
			}else{
				matching = false;
			}
		}
	}
	matching;
}

// create an empty array to be filled later
// -loop based on inputed int
// -string to pull characters from
// -generate length for word
// -empty word to be filled after for loop based on wordLength
// -generate a random word based on a random length between 1 -10
// -push randomly generated word into the array
// -return the array at the end of the function.
function GenerateArray(int){
	var RandomArray = [];
	for(var i = 0; i < int; i++){
		var chars = "ABCDEFGHIJKLMNOPQRSTUVWXTZabcdefghiklmnopqrstuvwxyz";
		wordLength = Math.floor((Math.random() * 10) + 1);
		wordString = "";
		for(var j = 0; j < wordLength; j++){
			var randomNumber = Math.floor(Math.random() * chars.length);
			wordString += chars.substring(randomNumber,randomNumber+1);
		}
		RandomArray.push(wordString);
	}
	return RandomArray;
}

// DRIVER CODE
// ---Longest phrase driver code.
longestPhraseArray = ["Zach Rudolph", "Danny Marks", "Shawn O'Looney"];
console.log(LongestPhrase(longestPhraseArray));


// ---Matching Pair driver code
matchingPairObject1 = {name: "Steven", age: 54}; 
matchingPairObject2 = {name: "Tamir", age: 54};

console.log(MatchingPairs(matchingPairObject2, matchingPairObject1));

matchingPairObject3 = {name: "Steven", age: 54}; 
matchingPairObject4 = {name: "Tamir", age: 55};

console.log(MatchingPairs(matchingPairObject3, matchingPairObject4));


// Using the GenerateArray function within the LongestPhrase
for(i = 0; i < 10; i++){
	console.log(LongestPhrase(GenerateArray(4)));
}


console.log(matchingPairObject1.length);

MatchingPairs2(matchingPairObject2, matchingPairObject1);