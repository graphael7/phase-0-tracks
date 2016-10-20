# module Shout
# 	def self.yell_angrily(words)
#     	words + "!!!" + " :("
# 	end

# 	def self.yelling_happily(words)
# 		words + "!!!" + " :)"
# 	end
# end

# p Shout.yell_angrily("Mad me")
# p Shout.yelling_happily("grrrr")


module Shout
	def yell_angrily(words)
		words + "!!!!!!!  :("
	end
end

class Lawyer
	include Shout
end

class Businessman
	include Shout
end

kofi = Lawyer.new
melody = Businessman.new

p kofi.yell_angrily("grrrr")
p melody.yell_angrily("haaaaaaa")


