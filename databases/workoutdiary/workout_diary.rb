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
	when "update"
		puts "What workout workout would you like to update?"
		update_exercise = gets.chomp
		puts "What is the change of time?"
		update_time = gets.to_i
		db.execute("UPDATE workouts SET exercise = update_time WHERE exercise = update_exercise")
	when "view"
		view_diary = db.execute("SELECT * FROM workouts")
		view_diary.each do |view_diary|
			puts "#{view_diary['date'] view_diary['name'] view_diary['exercise'] view_diary['time']}"
		end
	when "delete"
		puts "What workout workout would you like to delete?"
		delete_exercise = gets.chomp
		db.execute("DELETE FROM workouts WHERE exercise = delete_exercise")
	else
		puts "Incorrect Input!"
	end

puts "Would you like to continue (yes/no)"
user_answer = gets.chomp
if user_answer.downcase = "yes"
	continue = true
else
	continue = false
end

end while continue