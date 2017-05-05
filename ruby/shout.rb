module Shout
	def yelling_angrily(words)
		words + "!!!" + " >:("
	end

	def yelling_happily(words)
		words + "!!!" + " :)"
	end
end

class SportsFan
	include Shout
end

class WorldLeader
	include Shout
end

# require 'Shout'
# Shout.yelling_happily("Loud noises")
# Shout.yell_angrily("Nooooo")

sportsfan = SportsFan.new
worldleader = WorldLeader.new
p sportsfan.yelling_happily("Goooooooooooaaaaaaaal")
p sportsfan.yelling_angrily("C'MON REF!!")
p worldleader.yelling_happily("Free health care for all!")
p worldleader.yelling_angrily("I'm going to take over the world muhahahaha")