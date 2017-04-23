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
def decrypt(word)
	index = 0
	while index < word.length
		word[index] != " " ? word[index] = (word[index].ord-1).chr : word[index]
		index += 1
	end
	word.gsub!('`','z')
	p word
end

#program
puts "Would you like to encrypt or decrypt a password"
choice = gets.chomp.downcase
if choice != "encrypt" &&  choice != "decrypt"
	while choice != "encrypt" &&  choice != "decrypt"
		puts "Would you like to encrypt or decrypt a password? (only encrypt or decrypt are valid answers)"
		choice = gets.chomp.downcase
	end	
end

if choice == "encrypt"
	puts "enter the password:"
	encrypt(gets.chomp.downcase)
elsif choice == "decrypt"
	puts "enter the password:"
	decrypt(gets.chomp.downcase)
end