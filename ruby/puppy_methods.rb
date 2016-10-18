class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
  	num.times do 
  		puts "Woof!"
  	end
  end

  def roll_over()
  	puts "*RollsOver*"
  end

  def dog_years(human_years)
  	puts human_years * 7
  end

  def dog_eat(food)
  	puts "#{food} is so tasty"
  end

end

fido = Puppy.new
fido.fetch("ball")
fido.speak(3)
fido.roll_over 
fido.dog_years(10)
fido.dog_eat("steak")