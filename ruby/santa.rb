class Santa

	def initialize(gender, ethnicity)
		@age = 0
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		puts "Initializing Santa instance..."
	end

	

	def age
		@age
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

	def ethnicity
		@ethnicity
	end

	
	def gender=(new_gender)
		@gender = new_gender
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

end



# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end


santa1 = Santa.new("eth", "ski")
santa1.get_mad_at("Vixen")
