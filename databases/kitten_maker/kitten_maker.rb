# OPERATION KITTEN EXPLOSION!

# talk about Object Relational Mapping (ORM)

# require gems
require 'sqlite3' # NOT 'require_relative' because I'm not trying to require another file that I wrote inside some directory that is "close to" this project (in the file tree), just trying to require something installed on my system  
require 'faker' # another Ruby gem that generates fake data

# create SQLite3 database
db = SQLite3::Database.new("kittens.db") # this is the Ruby equivalent of typing 'sqlite3 kittens.db' on the command line in Terminal
# above we simply created a database, 'kittens.db', and stored it in a variable, 'db'
db.results_as_hash = true

# learn about fancy string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS kittens (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT
  )
SQL
# remember, this whole delimiter ^ above ^ is a string declaration not actually SQL (we will be passing this string into a '.execute' method that will convert it to SQL)
# the '<<-ANYTHING ...etc... ANYTHING' syntax is what is used in a "here doc" delimiter

# create a kittens table (if it's not there already)
db.execute(create_table_cmd)

# add a test kitten
# db.execute("INSERT INTO kittens (name, age) VALUES ('Bob', 10)") # here we are executing directly, not very magical at the moment (hard-coding), hence, commented out


# # add LOOOOTS of kittens!
# # so. many. kittens. 
# #KittenExplosion
def create_kitten(db, name, age)
  db.execute("INSERT INTO kittens (name, age) VALUES (?, ?)", [name, age])
end

10000.times do
  create_kitten(db, Faker::Name.name, 0)
end

# # explore ORM by retrieving data
# kittens = db.execute("SELECT * FROM kittens")
# # puts kittens.class
# # p kittens
# kittens.each do |kitten|
#  puts "#{kitten['name']} is #{kitten['age']}"
# end
