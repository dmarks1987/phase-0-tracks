# #hash of champions
# champions_gear = {
# 	Link: "Master Sword", 
# 	Zelda: "Light Bow", 
# 	Mipha: "Vah Ruta",
# 	Daruk: "Vah Rudania", 
# 	Revali: "Vah Medoh", 
# 	Urbosa: "Vah Naboris"
# }

# #array of enemies
# enemies = [
# 	"Calamity Ganon",
# 	"Bokoblin",
# 	"Moblin",
# 	"Lizalfos",
# 	"Lynel",
# 	"Chuchu"
# ]

colors = ["red", "blue", "green"]
meals = {
	Morning: "Breakfast",
	Noon: "Lunch",
	Night: "Dinner"
}

#array code practice

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

#hash code practice

puts "---------Original Plates--------"
puts meals

meals.each {|time, meal| puts "At #{time} you eat #{meal}"}




