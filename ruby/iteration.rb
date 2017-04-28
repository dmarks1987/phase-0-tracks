############################--Release 1--############################
colors = ["red", "blue", "green"]
meals = {
	Morning: "Breakfast",
	Noon: "Lunch",
	Night: "Dinner"
}

#array code practice---------------

puts "---------Original Colors--------"
p colors

#each practice
colors.each{|color| puts "Here is each color: #{color}"}

#map practice
colors.map! do |color|
	puts color
	"Hi!"
end
puts "With the .map method"
puts colors

#hash code practice-------------------

puts "---------Original Meals--------"
puts meals

meals.each {|time, meal| puts "At #{time} you eat #{meal}"}

############################--Release 2--############################
#Array and Hash to be played with below

puts "---------------------------Release 2---------------------------"

# Method 1 - A method that iterates through the items, 
# deleting any that meet a certain condition (for example, 
# deleting any numbers that are less than 5).

tools = ["Hammer", "Drill", "Wrench"]

puts tools
tools.each do |tool|
	puts "This tool is a #{tool}"
end

tools.delete_if {|tool| tool == "Drill"}
puts tools
puts 

#----------------------------------------------------------

# Method 2 - A method that filters a data structure for 
# only items that do satisfy a certain condition (for example, 
# keeping any numbers that are less than 5).

numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
puts numbers

puts "Display even numbers"
numbers.delete_if{|number| number%2 != 0}
puts numbers



# Method 3 - A different method that filters a data structure 
# for only items satisfying a certain condition -- Ruby offers 
# several options!

big_numbers = {
	"hundred" => 100, 
	"two oh one" => 201, 
	"three hundred" => 300, 
	"four oh one" => 401, 
	"five hundred" => 500,
	"six oh one" => 601
}

big_numbers.keep_if {|word,digit| digit%2==0}
puts big_numbers


# Method 4 - A method that will remove items from a data structure 
# until the condition in the block evaluates to false, then stops 
# (you may not find a perfectly working option for the hash, and that's okay).

names = ["Danny", "Duke", "Dillon", "Samuel", "William"]

names.each do |name|
	if name.include?("D")
	puts "#{name}"
end
end