#Client information hash
client_info = {
	name: "name",
	age: 0,
	children: false,
	num_children: 0,
	decor_theme: "theme"
}

#Gives the final answers to the survey. I used this code a lot, so I just made it its own function
def final_survey_answers
	puts "Here are your final survey answers"
	puts client_info
end

#Ask user for pieces of information
puts "Before I can determine how to design your home, I'll need some information."

#     Name (string)
puts "Please enter your name"
client_info[:name] = gets.chomp

#     Age (integer)
puts "How old are you"
client_info[:age] = gets.chomp.to_i
if (client_info[:age] < 0)
	while(client_info[:age] < 0)
		puts "Please enter a valid age."
		client_info[:age] = gets.chomp.to_i
	end
end

#     Children? (bool)
puts "Do you have any children? (y/n)"
any_children = gets.chomp.downcase
if any_children == 'y'
	client_info[:children] = true
elsif any_childnre == 'n'
	client_info[:children] = false
end
if client_info[:children] == false
	client_info[:num_children] = 0
else
#     If Children true, Ask Number of children
	puts "How many children do you have?"
	client_info[:num_children] = gets.chomp.to_i
end

#     Decor theme (string)
puts "Tell me what theme you'd like."
client_info[:decor_theme] = gets.chomp

#Print the choices out
puts "Thank you for the information. Here is a summary."
puts client_info

#Ask if user wants to modify information
puts "Would you like to modify any of your information? (y/n)"
modify = gets.chomp.downcase
#if modify != 'y' && modify != 'n'
#	while if modify != 'y' && modify != 'n'
#		puts "Would you like to modify any of your information? y/n are the only valid inputs."
#		modify = gets.chomp.downcase
#	end
#end

if modify == 'y'
	#Ask which key they want to modify.
	puts "Which key would you like to modify?"
	puts client_info.keys
	key_choice = gets.chomp.downcase
	case key_choice
		#Ask what they'd like to change it to.
		#Print updated hash
		when "name"
			puts "What would you like to change name to?"
			client_info[:name] = gets.chomp
			final_survey_answers
		when "age"
			puts "What would you like to change age to?"
			client_info[:age] = gets.chomp
			final_survey_answers
		when "children"
			puts "Do you have children or not? (y/n)"
			client_info[:children] = gets.chomp
			final_survey_answers
		when "num_children"
			puts "How many children do you have?"
			client_info[:num_children] = gets.chomp
			final_survey_answers
		when "decor_theme"
			puts "What decor theme would you like?"
			client_info[:decor_theme] = gets.chomp
			final_survey_answers
		else
			puts "Not a valid key"
			final_survey_answers
	end
elsif modify =='n'
	final_survey_answers
	end