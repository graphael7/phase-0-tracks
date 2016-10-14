

def aliass(real_name)

	temp_name = real_name.split(' ')
	temp_name.class
	temp_name.reverse!
	rreal_name = temp_name.join(' ')
	rreal_name.downcase!


	vowel = "aeiou"
	novowel_alphabet = "bcdfghjklmnpqrstvwxyz"
	x=0
	while x < real_name.length
		if rreal_name[x] == "u"
			rreal_name[x] = "a"
		else
		y=0
		while y < vowel.length
			if rreal_name[x] == vowel[y]
				rreal_name[x] = vowel[y+1]
				y = 5
			end
			y += 1
		end
		end
		x += 1
	end
	x2=0
	while x2 < real_name.length
		if rreal_name[x2] == "z"
				rreal_name[x2] = "b"
		else
		y2=0
		while y2 < novowel_alphabet.length
			if rreal_name[x2] == novowel_alphabet[y2]
				rreal_name[x2] = novowel_alphabet[y2+1]
				y2 = 26
			end
			y2 += 1
		end
		end
		x2 += 1
	end

	rreal_name
end

list_of_names = {
names: [],
aka:[]
}
begin
	puts "What name would you like an alias for? (if none type quit)"
	user_response = gets.chomp
	
	if user_response != "quit"
		puts "your alias is " + aliass(user_response)
		list_of_names[:names].push(user_response)
		list_of_names[:aka].push(aliass(user_response))
	end

end while user_response != "quit" 
length_of_array = list_of_names[:names].length

for x in 0...length_of_array
	puts
	puts "#{list_of_names[:names][x]} is also known as #{list_of_names[:aka][x]}"
end



