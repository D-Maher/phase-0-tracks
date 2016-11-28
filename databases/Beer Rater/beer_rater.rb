# PSEUDOCODE

# Program description: an "app" that lets the user keep track of different beers, as well as that user's rating for each beer, then stores that data in a database

# initialize a database
  # create a 'beers' table to hold each beer and its corresponding rating
  # create a 'users' table to keep track of users that log in

# setup main menu with the following options for the user:
  # - add a beer with its rating
  # - update a beer's rating
  # - remove a beer from the list
  # - display all beers with their ratings
  # - quit the program


# BUSINESS LOGIC

require 'sqlite3'

beers_db = SQLite3::Database.new("beers.db")
beers_db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS beers (
    id INTEGER PRIMARY KEY,
    beer_name VARCHAR(255)
    rating INT
  )
SQL

beers_db.execute(create_table_cmd)


# USER INTERFACE

puts "Welcome to the Beer Rater!"

puts "This is the main menu. Below are your options:\n\n"

puts "    1) Display your beers and their ratings."
puts "    2) Add a beer to your list."
puts "    3) Update the rating of a beer."
puts "    4) Remove a beer from your list."
puts "    5) Exit the program."

puts "\nPlease type a number to select an option."
choice = gets.chomp.to_i

case choice

  when 1
    puts "Here are your beers and their ratings:"
    beer_list = beers_db.execute("SELECT * FROM beers")
    beer_list.each do |beer|
      puts "#{beer['beer_name']}: #{beer['rating']}"
    end
  when 2
    puts "Please type the name of a beer you would like to add."
      beer_name = gets.chomp
    puts "Great! Please give #{beer_name} a rating, 1-5."
      rating = gets.chomp.to_i
    beers_db.execute("INSERT INTO beers (beer_name, rating) VALUES (?, ?)", [beer_name, rating])
  when 3
    puts "Which beer's rating would you like to update?"
    beer_name = gets.chomp

  when 4
    puts "Which beer would you like to remove from your list?"
    beer_name = gets.chomp

  when 5
    # break

end
