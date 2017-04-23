#encrypt method
def encrypt(word)
	index = 0
	while index < word.length
		word[index] != " " ? word[index] = word[index].next! : word[index]
		index += 1
	end
	word.gsub!('ab','a')
	p word
end

#decrypt method
#for each char in the string 
def decrypt(word)
	index = 0
	while index < word.length
		word[index] != " " ? word[index] = (word[index].ord-1).chr : word[index]
		index += 1
	end
	word.gsub!('`','z')
	p word
end

decrypt(encrypt("swordfish"))