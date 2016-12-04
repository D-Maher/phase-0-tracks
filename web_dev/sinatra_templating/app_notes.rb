# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static' # Here we set the public folder to the directory 'static'. The syntax here just more Sinatra boilerplate stuff (no need to memorize).

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do # Creates our "root" page.
  @students = db.execute("SELECT * FROM students") # The '@' lets us put the variable 'students' into our ERB template. Another Sinatra convention.
  erb :home # 'erb' is a method that takes a filename (as a symbol with no file extension) as an argument. Just more Sinatra convention.
end

get '/students/new' do # This URL syntax is a common convention.
  # "New student form will go here." # Just to test things out.
  erb :new_student # Now the form is "up and running".
end

# create new students via
# a form
post '/students' do # This lets us receive a 'POST' request.
  # p params # Lets us see the data we get from the form in the console. We see that the 'age' data was submitted as a string (typical form behavior), so we need to change that. Be aware of data types.
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i]) # Takes data entered into form and puts it into the students database. 'age' data is converted to an integer.
  redirect '/' # Redirects back to the page with the list of students.
end

# add static resources
  # Sometimes the 'static' directory is called 'public'.
# SEE ABOVE (line 5)





# GENERAL COMMENTS AND NOTES

# We create separate directory called 'views' to hold our HTML templates (i.e. our '.erb' files).
  # 'views' is a Sinatra convention so we need to name that directory as such.

# Note the 'erb' method call above. It takes ':home' as an argument without any parentheses (which is perfectly okay in Ruby). This absence of parentheses is a convention when building web frameworks or web apps.

# There are several ways to get data to the server:
  # - 'GET' request that has query parameters (key-value pairs that we puts in the URL).
  # - 'GET' request that has route parameters where there are variables in the route itself (think :symbols)/
  # - 'POST' request that sends data along in the body of the HTTP request.
# All three of the above methods of sending data end up in the hash 'params'!