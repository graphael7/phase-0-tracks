# Virus Predictor

# I worked on this challenge with: Joel Liu.
# We spent 1 hours on this challenge.

# EXPLANATION OF require_relative
#Allows you to load a file that is relative to the file containg the require_relative statement.
# It works by add require_relative statement in the file.
# Difference between require_relative and require is that require needs an absolute path so it can be searched for in the directories listed.

require_relative 'state_data'

class VirusPredictor

#initializes and defines state_of_origin, population_density, and population
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #calls two methods of predicted_deaths and and returns speed_of_spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

private


 #for each instance of the class, it'll let you know what the predicted deaths of the state
  def predicted_deaths
#      predicted deaths is solely based on population density
#     if @population_density >= 200
#     number_of_deaths = (@population * 0.4).floor
#     elsif @population_density >= 150
#       number_of_deaths = (@population * 0.3).floor
#     elsif @population_density >= 100
#       number_of_deaths = (@population * 0.2).floor
#     elsif @population_density >= 50
#       number_of_deaths = (@population * 0.1).floor
#     else
#       number_of_deaths = (@population * 0.05).floor
#     end

#     print "#{@state} will lose #{number_of_deaths} people in this outbreak"
    case @population_density
      when 200..100000 then death_rate = 0.4
      when 150..199 then death_rate = 0.3
      when 100..149 then death_rate = 0.2
      when 50..99 then death_rate = 0.1
      else 
        death_rate = 0.05
    end 
number_of_deaths = (@population * death_rate).floor
print "#{@state} will lose #{number_of_deaths} people in this outbreak"
   end

  
#calculates speed_of_spread of the virus by population_density and state
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    
    #   if @population_density >= 200
    #     speed += 0.5
    #   elsif @population_density >= 150
    #     speed += 1
    #   elsif @population_density >= 100
    #     speed += 1.5
    #   elsif @population_density >= 50
    #     speed += 2
    #   else
    #     speed += 2.5
    #   end
    #   puts " and will spread across the state in #{speed} months.\n\n"
    # end
  speed = 0.0

  case @population_density
        when 200..100000 then speed_rate = 0.5
        when 150..199 then speed_rate = 1
        when 100..149 then speed_rate = 1.5
        when 50..99 then speed_rate = 2.0
        else 
          speed_rate = 2.5
      end 
  speed += speed_rate
  puts " and will spread across the state in #{speed} months.\n\n"
  end
end 

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each {|name_of_state, population_info|
  name_of_state = VirusPredictor.new(name_of_state, population_info[:population_density], population_info[:population])
  name_of_state.virus_effects
}



alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Section
#
# # What are the differences between the two different hash syntaxes shown in the state_data file?
# One hash is a symbol and one is a string
# # What does require_relative do? How is it different from require?
# Require relative allows you to import a file that is in the directory of the file you are importing. Require allows you to
# import any file available
# # What are some ways to iterate through a hash?
# you can iterate through a hash with .each
# # When refactoring virus_effects, what stood out to you about the variables, if anything?
# What stood out was that there was only one thing changing, the rates
# # What concept did you most solidify in this challenge?
# refactoring was solidified for me in this session