
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