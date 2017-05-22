#require sqlite3 gem
require 'sqlite3'

#create a database called climb
db = SQLite3::Database.new("climbs.db")
db.results_as_hash = true

create_climbing_table = <<-SQL
	CREATE TABLE IF NOT EXISTS climbs(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		grade VARCHAR(255),
		park VARCHAR(255),
		send BOOLEAN,
		year INT
	)
SQL

db.execute(create_climbing_table)

def store_climb(db, name, grade, park, send, year)
	db.execute("INSERT INTO climbs (name, grade, park, send, year) VALUES (?, ?, ?, ?, ?)", [name, grade, park, send, year])
end

while(true)

	puts "---- New Climb ----"
	puts "What is the name of the route?"
	route_name = gets.chomp

	puts "What is the route's grade?"
	route_grade = gets.chomp

	puts "What park is the route in?"
	route_park = gets.chomp

	puts "Did you send (complete) the climb? (type in 'true' or 'false')"
	route_sent = gets.chomp.downcase

	puts "What year did you climb the route?"
	route_year = gets.chomp.to_i

	store_climb(db, route_name, route_grade, route_park, route_sent, route_year)

	climbs = db.execute("SELECT * FROM climbs")
		climbs.each do |climb|
		puts "#{climb['name']} in #{climb['park']} has a grade of #{climb['grade']}. It is #{climb['send']} that you sent the route in #{climb['year']}."
	end
end
