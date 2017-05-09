//function reverse takes string as an arument and reverses it
function reverse (word)
{
	// break string into an array, since there is not built in method to reverse a string
	// this is done very similarly in ruby.
	var wordArray = word.split("");

	// based on research, JS has a built in method to reverse arrays.
	// We'll use .reverse() here on wordArray.
	var reversedArray = wordArray.reverse();

	// Again, we have a built in method that works the same way in Ruby.
	// We'll use .join("") to make the reversedArray into a string and
	// store it in its own variable.
	var reversedWord = reversedArray.join("");

	// IF word is a palindrome, let the user know.
	if (reversedWord == word)
	{
		console.log(word + " is the same forward as it is backward!");
		return word;
	}
	// OTHERWISE let them know what the reverse of word is.
	else
	{
		console.log(reversedWord + " is " + word + " reversed.");
		return reversedWord;
	}
}

// This variable is for our simple condition so we can check our control flow skills
var arbitraryNumber = 1;
if (arbitraryNumber == 1)
{
	// Since we want to print the new word we need to use the console class and it's log function
	// and throw our function in as an argumen to log
	console.log(reverse("racecar"));
	console.log(reverse("hello"));
}