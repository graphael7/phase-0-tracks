

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



puts aliass("Felicia Torres")


