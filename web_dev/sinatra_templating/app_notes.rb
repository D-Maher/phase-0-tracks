# require gems
require 'sinatra'
require 'sqlite3'

# set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do # Creates our "root" page.
  @students = db.execute("SELECT * FROM students") # The '@' lets us put the variable 'students' into our template. Another Sinatra convention.
  erb :home # 'erb' is a method that takes a filename (as a symbol with no file extension) as an argument. Just more Sinatra convention.
end

get '/students/new' do # This URL syntax is a common convention.
  # "New student form will go here." # Just to test things out.
  erb :new_student
end

# create new students via
# a form
post '/students' do # This lets us receive a 'POST' request.
  # db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  # redirect '/'
end

# # add static resources
# # SEE ABOVE (line 5)





# GENERAL COMMENTS AND NOTES

# We create separate directory called 'views' to hold our HTML templates (i.e. our '.erb' files).
  # 'views' is a Sinatra convention so we need to name that directory as such.

# Note the 'erb' method call above. It takes ':home' as an argument without any parentheses (which is perfectly okay in Ruby). This absence of parentheses is a convention when building web frameworks or web apps.