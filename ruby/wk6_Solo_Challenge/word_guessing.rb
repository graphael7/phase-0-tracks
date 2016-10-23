# the number of guesses will increase in the class

# could have a method that returns false if the amount of guesses are 
# equal to the length of the word + 50 percent

# have a readable and writeable secretword in the class

# a method to check whether the guessed letter is in the secret word
# in the method we check that the letter is in the secret word and if it is 

# send back true if not send back false and update guesses counter

# a method to draw the lines; the method will get the length of the secretword and draw appropriate lines

# a method to update with correct letter

class WordGuess
	attr_accessor :secretword

	def initialize
		@secretword = "dice"
		@drawn_line = ""
		@guess_count = 0
	end

	def draw_line
		@secretword.length.times do |x|
			@drawn_line.insert(0,"_ ")			
		end
		@drawn_line
	end

	def check_letter(checked_letter)
		@guess_count += 1
		isitthere = @secretword.index(checked_letter)
		if isitthere == nil
			return false
		else
			return true
		end
	end

	def update_letter(updated_letter)
		itsthere = @secretword.index(updated_letter)
		x = 0
		@drawn_line = ""
		@secretword.length.times do |x|
			if x != itsthere
				@drawn_line.insert(-1,"_ ")			
			else
				@drawn_line.insert(-1, "#{updated_letter} ")
			end
		end
		@drawn_line
	end

end