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
	attr_accessor :secretword, :drawn_line

	def initialize
		@secretword = "dice"
		@drawn_line = ""
		@guess_count = 0
	end

	def draw_line
		numberoflines = @secretword.length * 2
		numberoflines.times do |x|
			if x.even?
				@drawn_line.insert(x,"_ ")	
			end				
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
		itsthere = @secretword.index(updated_letter) * 2
		@drawn_line[itsthere] = "#{updated_letter}"
		@drawn_line
	end

end

user2 = WordGuess.new
puts "User1 enter the secret word"
user2.secretword = gets.chomp
number_of_guesses = user2.secretword.length + user2.secretword.length/2
num = 0
correct_guesses = 0
user2.draw_line
while  num <= number_of_guesses
	num += 1
	if user2.secretword.length != correct_guesses
		puts "User2 guess a letter in the word"
		user2_guess = gets.chomp
		if user2.check_letter(user2_guess)
			puts "Correct guess"
			correct_guesses += 1
			puts user2.update_letter(user2_guess)
		else
			puts "Incorrect Guess"
		end
	end
end

if user2.secretword.length == correct_guesses
	puts "You win!!!"
else
	puts "Sorry you have run out of guess"
end