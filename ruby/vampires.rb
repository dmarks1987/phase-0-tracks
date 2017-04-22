puts "what is your name?"
name = gets.chomp

puts "how old are you?"
inputAge = gets.chomp.to_i

puts "what year were you born?"
inputYear = gets.chomp.to_i
supposedAge = 2017 - inputYear

if supposedAge == inputAge
  ageVerified = true
else
  ageVerified = false
end


puts "Out company cafeteria serves garlic bread. Should we order some for you? (y/n)"
garlicBread = gets.chomp


if garlicBread == 'y'
	wantsGarlicBread = true
elsif garlicBreak == 'n'
	wantsGarlicBread = false
else
	puts "Please enter (y/n) only"
end

  

puts "Would you like to enroll in the company's health insurance?"
insurance = gets.chomp

