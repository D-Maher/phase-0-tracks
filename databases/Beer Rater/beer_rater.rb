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
    beer_name VARCHAR(255),
    rating INT
  )
SQL

beers_db.execute(create_table_cmd)


# USER INTERFACE

puts "Welcome to the Beer Rater!"

loop do

  puts "This is the main menu. Below are your options:\n\n"

  puts "    1) Display your beers and their ratings."
  puts "    2) Add a beer to your list."
  puts "    3) Update the rating of a beer."
  puts "    4) Remove a beer from your list."
  puts "    5) Exit the program."

  puts "\nPlease type a number to select an option.\n\n"
  choice = gets.chomp.to_i
  puts

  case choice

    when 1
      puts "Here are your beers and their ratings: \n\n"
      beer_list = beers_db.execute("SELECT * FROM beers")
      if beer_list.empty?
        puts "You have not added any beers to your list yet! Please select option 2 in the main menu to add your first beer.\n\n"
      else
        beer_list.each do |beer|
          puts "    #{beer['beer_name']}: #{beer['rating']}\n\n"
        end
      end

    when 2
      puts "Please type the name of a beer you would like to add.\n\n"
        beer_name = gets.chomp
      puts
      puts "Please give #{beer_name} a rating, 1-5.\n\n"
        rating = gets.chomp.to_i
      puts
      puts "Great! #{beer_name} has been added to your list with a rating of #{rating}.\n\n"
      beers_db.execute("INSERT INTO beers (beer_name, rating) VALUES (?, ?)", [beer_name, rating])

    when 3
      puts "Which beer's rating would you like to update?\n\n"
        beer_name = gets.chomp
      puts
      puts "What would you like to change #{beer_name}'s rating to? Please type a number 1-5.\n\n"
        rating = gets.chomp.to_i
      puts
      puts "Okay! You have changed #{beer_name}'s rating to #{rating}.\n\n"
      beers_db.execute("UPDATE beers SET rating=? WHERE beer_name=?", [rating, beer_name])

    when 4
      puts "Which beer would you like to remove from your list?\n\n"
        beer_name = gets.chomp
      puts
      puts "Alright, #{beer_name} has been removed from your list.\n\n"
      beers_db.execute("DELETE FROM beers WHERE beer_name=?", [beer_name])

    when 5
      break
    end

end