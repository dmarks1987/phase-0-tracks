puts "How many employees are you going to process?"
employeesToProcess = gets.chomp.to_i
currentEmployee = 1

if employeesToProcess <= 0
	while employeesToProcess <= 0
		puts "How many employees are you going to process? (Please enter value greater than 0)"
		employeesToProcess = gets.chomp.to_i
	end
end

while currentEmployee <= employeesToProcess
	puts "[[Processing Employee Number #{currentEmployee}]]"
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
	puts "#{ageVerified}"


	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
	garlicBread = gets.chomp
	while ("#{garlicBread}" != 'y') && ("#{garlicBread}" != 'n')
		puts "Should we order some for you? (y/n) are only valid inputs"
		garlicBread = gets.chomp
	end
	  

	puts "Would you like to enroll in the company's health insurance? (y/n)"
	insurance = gets.chomp
	while ("#{insurance}" != 'y') && ("#{insurance}" != 'n')
		puts "Would you like to enroll in the company's health insurance? (y/n) are only valid inputs."
		garlicBread = gets.chomp
	end

	isVampire = nil
	if (ageVerified == true) && (("#{garlicBread}" == 'y') || ("#{insurance}" != 'y'))
		puts "Employee number #{currentEmployee} is probably not a vampire."
		isVampire == false
	elsif (ageVerified == false) && (("#{garlicBread}" == 'n') || ("#{insurance}" != 'n'))
		puts "Employee number #{currentEmployee} is probably a vampire."
		isVampire == true
	elsif (ageVerified == false) && ("#{garlicBread}" == 'n') && ("#{insurance}" != 'n')
		puts "Employee number #{currentEmployee} is most definitely a vampire"
		isVampire == true
	elsif ("#{name}" == "Drake Cula") || ("#{name}" == "Tu Fang")
		puts "Employee number #{currentEmployee} is definitely a vampire."
		isVampire == true
	else
		puts "Results for Employee #{currentEmployee} are inconclusive."
	end
	
	puts "Please type in any allergies one at a time. When you're finished, type 'done'."
	allergies = gets.chomp

	if ("#{allergies}" != "done")
		until ("#{allergies}" == "done") || ("#{allergies}" == "sunshine")
			puts "Next allergy:"
			allergies = gets.chomp
		end
	end
	if ("#{allergies}" == "sunshine")
		puts "Employee number #{currentEmployee} is probably a vampire."
	end
	
	

	puts "------------------------------------"
	currentEmployee += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."





#puts "Please type in any allergies one at a time. When you're finished, type 'done'."
#	allergies = gets.chomp
#	case allergies
#	when "sunshine"
#		puts "Employee number #{currentEmployee} is probably a vampire."
#	when "done"
#		puts "thanks for completing the survey"
#	else
#		puts "Next allergy"
#	end


