class Santa
	attr_reader :reindeer_ranking, :age, :ethnicity
	attr_accessor :gender, :age 
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
		@age = 0
	end

	def initialize(gender,ethnicity)
		puts "Initializing Santa instance"
		@gender = gender 
		@ethnicity = ethnicity

	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer_name)
		@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking.push(reindeer_name)
	end

	def gender=(new_gender)
		@gender = new_gender
	end

end


# bob = Santa.new("male", "black")
# bob.speak
# bob.eat_milk_and_cookies("snickerdoodles")
# bob.celebrate_birthday
# puts "the new age is #{bob.age}"
# bob.get_mad_at("Vixen")
# puts "#{bob.reindeer_ranking}"
# bob.gender = "male"
# puts "#{bob.gender}"
# puts "the age is #{bob.age} and the ethnicity is #{bob.ethnicity}"

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
prng = Random.new
100.times do |i|
  santas << Santa.new(example_genders.sample, example_ethnicities.sample)
  santas[i].age = prng.rand(140)
  puts "#{santas[i].age} #{santas[i].gender} #{santas[i].ethnicity}"
end


