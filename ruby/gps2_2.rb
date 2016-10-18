# Method to create a list - grocery_list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # declare the method with the hash name we will use
  # We will add the values for the has. And then print out values in the hash
  # Take string and convert into separate strings for converting to hash
  # change each individual string into a key for hash
  #set default quantity for each key
  # print the list to the console 
# output:  hash

# Method to add an item to a list
# input: item name and optional quantity
# steps: input of items to add
#create a new key in the hash
# output: hash

# Method to remove an item from the list
# input: items to remove from hash
# steps: take the items find the key and delete it
# output: hash

# Method to update the quantity of an item
# input: items to update
# steps: take the items and find item to update and update it
# output: hash

# Method to print a list and make it look pretty
# input:hash
# steps:print out hash by putting p and name of hash
# output: grocery list

initial_list="carrots apples"
grocery = {}
def create_list(initial_list,grocery)
	separated_list = initial_list.split(" ")
	separated_list.each do |item|
		grocery[item] = 1 
	end
	grocery 
end

p create_list(initial_list, grocery)

def add_list(add_item, add_quantity, current_list)
	current_list[add_item] = add_quantity
	current_list
end

p add_list("Lemonade", 2, grocery)
p add_list("Tomatoes", 3, grocery)
p add_list("Onions", 1, grocery)
p add_list("Ice Cream", 4, grocery)

def remove_list(remove_item, current_list)
	current_list.delete(remove_item)
	current_list
end

p remove_list("Lemonade", grocery)

def update_list(update_item, update_quantity, current_list)
	current_list[update_item] = update_quantity
	current_list
end
p update_list("Ice Cream", 1, grocery)

def print_list(current_list)
	current_list.each do |x,y|
		p "#{x} = #{y} "
	end
end

p print_list(grocery)
	