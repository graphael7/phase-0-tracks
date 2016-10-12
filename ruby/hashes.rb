
client_info = {}

puts "What is the client's name?"
client_info[:name] = gets.chomp

puts "What is the client's age?"
client_info[:age] = gets.to_i

puts "How many kids does the client have?"
client_info[:number_of_children] = gets.to_i

puts "What is the client's decor theme?"
client_info[:decor] = gets.chomp


puts client_info

puts "Which key would you like to update? if no type none"
update_key = gets.chomp
if update_key != "none"
	puts "What is the new value for " + update_key
	update_value = gets
	client_info[update_key.to_sym] = update_value
	puts client_info
end
