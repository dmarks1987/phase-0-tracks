# A Method for cycling through an array of vowels.
def next_vowels(reversed_name)
	vowels = ["a", "e", "i", "o", "u"]
	reversed_name = reversed_name.split('')
	vowel_name = reversed_name.map do |vowel|
	    if vowels.include?(vowel)
	      vowels.rotate(1)[vowels.index(vowel)]
	    else
	      vowel
	    end
  	end
  vowel_name.join
end

# A Method for cycling through an array of consonants
def next_consonants(vowel_name)
	consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']
	vowel_name = vowel_name.split('')
	consonant_name = vowel_name.map do |consonant|
	    if consonants.include?(consonant)
	      consonants.rotate(1)[consonants.index(consonant)]
	    else
	      consonant
	    end
  	end
  consonant_name.join
end

#create empty array which will eventually store the reversed name
rev_real_name_arr = []
puts "Hello Agent, in order to generate your Spy name, input your full name"
real_name = gets.chomp.downcase
rev_real_name_arr << real_name.split(' ').reverse! #----should look something like this real_name_arr = ["lastname", "firstname"]

# Create a new string with the reversed name array 
reversed_name = rev_real_name_arr.join(' ')
puts reversed_name
next_vowels (reversed_name)
puts "#{next_consonants(next_vowels(reversed_name))} is #{real_name}"