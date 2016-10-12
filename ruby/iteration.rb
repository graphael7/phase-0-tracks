animals = ["dog","cat","lion", "tiger"]

actors = {
	name:  "Will Smith",
	age:  43,
	movie: "Men in Black"
}

animals.each do |animal|
	puts animal
end

actors.each do |label,bio|
	puts "This #{label} of this actor is #{bio}"
end

animals.map! do |animal|
	puts animal
	animal.next
end

puts "After .map call:"
p animals

numbers = [1, 2, 3, 4, 5]

home = {

		rooms: 2,
		number_of_residents: 5,
		number_of_pets: 1,
		number_of_televison: 6



}


#1Filtering the array with a delete_if
numbers.delete_if do |number|

	number < 3
	

end

p numbers

#2 Filering the hash with a  delete_if

home.delete_if do |property, number|

	number < 5

end

p home


#Filtering the array with a keep_if

numbers.keep_if do |number|

	number > 3
	

end

p numbers


#Filtering the hash with keep_if

home.keep_if do |property, number|

	number > 5

end

p home


#Filtering the array with select method

numbers.select do |number| 

	number > 2
	
end


p numbers