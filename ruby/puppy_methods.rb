# Puppy class
class Puppy

	# Fetch method--------------------------
	def fetch(toy)
		puts "I brought back the #{toy}!"
		toy
	end

	# Speak method--------------------------
	def speak(int)
		# count = 1
		# while count <= int
		# 	puts "Woof!"
		# 	int
		# 	count += 1
		# end
		int.times {puts "Woof!"} #cleaner way of writing this
		int
	end

	# Roll over method----------------------
	def roll_over
		puts "*rolls over*"
	end

	# Shake method--------------------------
	def shake(paw)
		if paw == "right"
		puts "*shakes right paw*"
		elsif paw == "left"
		puts "*shakes left paw*"
		else
		puts "dog tilts head in confusion"
		end
		paw
	end

	# Convert human years to dog years.-----
	def dog_years(human_years)
		dog_years = human_years * 7
		puts "The dog is #{dog_years} years old (in dog years)."
		dog_years
	end

	# Initialize method---------------------
	def initialize
		puts "Initializing new puppy class"
	end

end

# Basketball Player class
class BasketballPlayer

	# Initialize method
	def initialize(name)
		@name = name
		puts "Initialize Basketball_Player instance"
	end

	# Dunk method
	def dunk
	  puts "slammmmmm dunk"
	end

	# Shoot method
	def shoot
	  puts "He shoots..."
	end

	# Scores method
	def scores(points)
		if points == 1
			puts "He makes the freethrow"
		elsif points == 2
			puts "He scores"
		elsif points == 3
			puts "He scores from way downtown!"
		else
			puts "Aaaaiiiiirbaaaaaall"
		end
	end

end

puppy = Puppy.new
puppy.fetch("ball")
puppy.speak(3)
puppy.roll_over
puppy.dog_years(7)
puppy.shake("left")
puppy.shake("right")
puppy.shake("not a paw")

# initialize runs before the called methods
# initialize does not run if it is spelled incorrectly, 
# I don't get an error either

bballplayers = []

count = 1
while count <= 50 
 bballplayers << BasketballPlayer.new(count)
 count += 1
end

bballplayers.each do |baller|
  player.shoot
  player.scores(3)
end