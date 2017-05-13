# Virus Predictor
# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.
# EXPLANATION OF require_relative
# Require_relative connects the code to another document of code. Where location of the doc is represented as relative from where the oringial code is located.
#
require_relative 'state_data'
class VirusPredictor
#initializes with instance variables, state, pop density and population
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#calls the predictor methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end
  private
#Estimates the number deaths based upon the popultion and population density of the state
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4)
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3)
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2)
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1)
    else
      number_of_deaths = (@population * 0.05)
    end
    print "#{@state} will lose #{number_of_deaths.floor} people in this outbreak"
  end
#Estimates how quickly virus will spread based on the population density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # speed = 0.0
    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1.0
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2.0
    else
      speed = 2.5
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end
end
#=======================================================================
# DRIVER CODE
 # initialize VirusPredictor for each state
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects
jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects
california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects
alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
# STATE_DATA.each do |state, population_data|
#   state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
#   state.virus_effects
# end
#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# => The inner hash has symbols for their keys, and the outer hash has strings
# What does require_relative do? How is it different from require?
# => require_relative connects two different docs of code together and unlike require it bases its 'search' for the other doc based on the location of the calling doc.
# What are some ways to iterate through a hash?
# => while/until/for loops, #each method (#each also have specific verisions for key and value) 
# When refactoring virus_effects, what stood out to you about the variables, if anything?
# => They were redundant. They were already accessible so we didn't need they as arguments in the methods.
# What concept did you most solidify in this challenge?
# => Danny & Josh: The accesiblity of instance varibles, and practicing DRY