puts "How many employees will be processed"
num_employee = gets.to_i
 for x in 1..num_employee do
 	
 
puts "What is your name?"
vname = gets.chomp
puts "How old are you?"
vage = gets.to_i
puts "What year were you born?"
vyear = gets.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you?(Y/N)"
vgarlic = gets.chomp
puts "Would you like to enroll in the company's health insurance?(Y/N)"
vhinsure = gets.chomp

finished = ""
 while finished != "done"
 	puts "name any allergies you have one at a time. type done when you are finished"
 	finished = gets.chomp
 	if finished == "sunshine"
 		vage = 1
 		vyear = 2014
 		vgarlic = "n"
 		finished = "done"
 	end
 end



if (vage == (2016 - vyear)) && (vgarlic.upcase == "Y" || vhinsure.upcase == "Y")
	puts "Probably not a vampire"
elsif (vage != (2016 - vyear)) && vgarlic.upcase != "Y" || vhinsure.upcase != "Y"
	puts "Probably a vampire"
elsif (vage != (2016 - vyear)) && vgarlic.upcase != "Y" && vhinsure.upcase != "Y"
	puts "Almost certainly a vampire"
elsif vname == "Drake Cula" || vname == "Tu Fang"
	puts "Definitely a vampire"	
else
	puts "Results inconclusive"
end

end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends." 