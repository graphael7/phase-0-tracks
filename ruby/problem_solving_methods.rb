#Release 0
#create a method that takes an array of integers

def search_array(integers,search)
	integers.each{|x|
		if x == search
			return x
		end
    }
	 return nil
end
array_integer = [8,9,10,17,25,26,27]

p search_array(array_integer,10)
p search_array(array_integer,9)
p search_array(array_integer,26)
p search_array(array_integer,17)
p search_array(array_integer,4)

#Release 1
def fib(integers)
	numbers = [0,1]
	index = 0
	while index <= integers - 2 
		num1 = numbers[index] + numbers[index + 1]
		numbers.push(num1)
		index += 1
	end
	return numbers
end
p fib(10)
p fib(8)
p fib(21)
p fib(3)

#Release 2

#Write a method with a parameter
#create a loop that goes through the entire array until the numbers are ogranized from smallest to largest
#create an if statement that compares two vaiables in that array
#compare two elements in the array to see which is greater and swap them 
#so that the smaller number goes first

def bubble_sort(number)
	n = number.length
	swapped = false

	until swapped do 
		swapped = true
		(n-1).times do |i|	
			p number
			if number[i] > number[i+1]
			temp_number = number[i+1]
			number[i+1] = number[i]
			number[i] = temp_number
			swapped = false
			end	
				p number
		end
	break if swapped	
	end
	number
end
number = [5,3,7,81, 1, 100,10,0]
p bubble_sort(number)