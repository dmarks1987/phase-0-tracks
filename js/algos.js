function LongestPhrase(array)
{
	var currentLength = 0;
	var longest;
	for(var i = 0; i < array.length; i++)
	{
		if(array[i].length > currentLength )
		{
			currentLength  = array[i].length;
			longest = array[i];
		}
	}
	return longest
}

