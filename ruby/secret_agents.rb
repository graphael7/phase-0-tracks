#encrypt

#collect the string from the user
#index the alphabet
#take the string from the user convert into an integer index
#add 1 to each integer
#return the altered string


#decrypt

#collect the string
#convert it to the integer index
#subtract 1 from each integer
#reconvert to string and return value






def encrypt(user_string)
	index = 0
	while index < user_string.length
	if user_string[index] == "z"
		user_string[index] = "a"
	else
  	user_string[index] = user_string[index].next
    end
  	index += 1
	end
	user_string
end
	

 
def decrypt(user_string2)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	index = 0
	
	while index < user_string2.length
	if user_string2[index] == "a"
				user_string2[index] = "z"
	else
	for x in 0..25 
		if user_string2[index] == alphabet[x]
			user_string2[index] = alphabet[x-1]
		end
	end
	end
	index += 1
  	end
  	user_string2
 end

#puts encrypt("zed")
#puts decrypt("afe")
#decrypt(encrypt("swordfish")) 

puts "Would you like to encrypt or decrypt a password?"	
user_decision = gets.chomp
puts "What is the password?"
user_password = gets.chomp

user_input = false 

until user_input
	if user_decision.upcase == "ENCRYPT"
		user_input = true 
		puts "Here is your encrypted password " + encrypt(user_password)
	elsif user_decision.upcase == "DECRYPT"
		user_input = true 
		puts "Here is your decrypted password " + decrypt(user_password)
	else
		puts "Encrypt or decrypt."
		user_decision = gets.chomp 
	end
end