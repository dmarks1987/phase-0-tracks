#hamsters name, sqeak level, fur color, adoptable, age

puts "What's the hamster's name?"
name = gets.chomp
puts "The hamsters name is #{name}"

puts "On a scale from 0(quite) to 10(loudest), describe the Hamster's volume"
loud = gets.chomp.to_i
while loud < 0 || loud > 10
  puts "enter a number between 0 and 10."
  loud = nil
  loud = gets.chomp.to_i
end  
  puts "The hamster is #{loud} on the loud scale."

puts "What color is the hamster?"
color =  gets.chompblue
puts "The hamster is #{color}"

answer = false
until answer
	puts "Is the hamster adoptable? (y/n)"
	adopt = gets.chomp
	if adopt == "y"
		puts "The hamster is a good candidate"
		answer = true
	elsif adopt == "n"
		puts "The hamster is not a good candidate"
		answer = true
	else
		puts "please answer y or n only."
	end
end

puts "How old is #{name} in years"
age = gets.chomp.to_f
if age == 0.0
	age = nil
	puts "#{name}'s age is undetermined"
else
	puts "I have #{name} as #{age} years old."
end