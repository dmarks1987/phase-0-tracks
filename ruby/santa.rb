class Santa
	attr_reader :age, :ethnicity, :gender
	attr_accessor :age, :ethnicity, :gender

	def initialize(gender = "unknown", ethnicity = "unknown", age)
		@age = age
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		puts "Initializing Santa instance..."
	end

	def celebrate_birthday
		@age = age + 1
	end

	def get_mad_at(reindeer_name)
		@reindeer_ranking.each do |name|
			if name == reindeer_name
				removed_animal = @reindeer_ranking.delete(name)
				@reindeer_ranking << removed_animal
				break
			end	
		end
		p @reindeer_ranking
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

end



santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

example_ethnicities.length.times do |index|
	santas << Santa.new(example_genders[index], example_ethnicities[index])
end

100.times do
	santa = Santa.new(example_genders.sample, example_ethnicities.sample, rand(0..140))
	puts santa.gender
	puts santa.ethnicity
	puts santa.age
end