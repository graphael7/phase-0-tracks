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

