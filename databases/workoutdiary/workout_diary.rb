require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("workouts.db")
db.results_as_hash = true

create_table_diary = <<-SQL
CREATE TABLE IF NOT EXISTS workouts(
	id INTEGER PRIMARY KEY,
	date VARCHAR(255),
	name VARCHAR(255),
	exercise VARCHAR(255),
	time INT
	)
SQL

db.execute(create_table_diary)

puts "This program is a workout diary. What is your name?"
user_name = gets.chomp
puts "What is the date for this entry?"
user_date = gets.chomp

begin
	puts "Would you like to view, add, update or delete a entry into you workout diary"
	choice = gets.chomp
	case choice
	when "add"
		puts "What exercise did you do?"
		exercise = gets.chomp
		puts "How long did you workout for?"
		time = gets.to_i
		db.execute("INSERT INTO workouts (date,name,exercise,time) VALUES (?,?,?,?)", [user_date,user_name,exercise,time])

puts "Would you like to continue (yes/no)"
user_answer = gets.chomp
if user_answer.downcase = "yes"
	continue = true
else
	continue = false
end

end while continue