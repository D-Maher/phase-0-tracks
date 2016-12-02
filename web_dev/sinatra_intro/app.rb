# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db") # Database setup
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do # This is technically a Ruby method
  # "Hello world!" # Sinatra gives us boilerplate HTML if we do not provide it, but we can provide any HTML we want (see below)
  # "<h1><a href='http://www.google.com'>Hello world!</a></h1>" # Changes won't take effect by simple reload... unless we have Shotgun (a gem) installed

  # p params # Anything printed in this manner will appear in the console that Shotgun is running in, and this returns '{"name" => "Danny"}'

  # name = params[:name] # Whenever query parameters are sent, Sinatra stores them in a hash called 'params', this is how you access data put in the URL. We access 'name' in the 'params' hash as a symbol, even though it's a string (Sinatra magic)

  # if name # i.e. if there is a name provided in the URL
  #   "Hello, #{name}!" # Putting the query parameter '/?name=Danny' in the address bar after 'localhost:9393' won't work without the 'name = ...' line
  # else # i.e. if no name is provided
  #   "Hello, you!"
  # end

  "#{params[:name]} is #{params[:age]} years old." # This part must be string. Also, note that the string interpolation allows direct access to 'params' hash values.
end


# write a GET route with
# route parameters
# get '/about' do # Now we just need to add '/about' to our URL in the browser
#   "I am a programmer, and I am learning Sinatra."
# end
get '/about/:person' do # The colon (':') syntax is how we pass in a variable called 'person'. It is not a query parameter, but part of the route that gets matched. e.g. URL should look something like 'localhost:9393/about/Danny'. Think of it as a more "modern" query parameter.
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do # We can do multiple variables in the URL too as route parameters (all accessible within the hash 'params')
  "#{params[:person_1]} loves #{params[:person_2]}"
end


# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students") # This is just to see what is inside our 'students' table within our 'students.db' database (comes out as a big ole hash in the browser).
  # students.to_s # Need to convert this to a string or we'll get an error.
  response = "" # Starts out empty but is added to with each iteration through the 'students' table (see below).
  students.each do |student|
    response << "ID: #{student['id']}<br>" # <br> is a "break character" in HTML (like a new line).
    response << "Name: #{student['name']}<br>" # Note the SQLite3 gem syntax for accessing data in the table 'students'.
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>" # Two line breaks to separate each student.
  end
  response # Returns the 'response' string that we had been adding to.
end


# write a GET route that retrieves
# a particular student
# Below we are combining persistent data with route parameters:
get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0] # Using '[0]' to just get the hash (?).
  student.to_s
end



# GENERAL COMMENTS AND NOTES

# Sinatra is just Ruby. It enables the use of Ruby in a web server with the following unique features/syntax:
  # - the 'get '/' do' line that starts it off
  # - needing to use the hash 'params' to access data available to the server

# Query parameters can be put into the URL in the browser
  # syntax: '/?parameter_name=data_value' (think key-value pair)
  # multiple query parameters can be separated with an '&'
    # e.g. '/?name=Danny&age=24'

# Any variables put into the URL are accessible within the 'params' hash... Sinatra sure is neat!

# With Sinatra, our web server basically runs methods that we are calling via HTTP instead of in a Ruby program.

# In 'GET' requests, the two ways to pass information are:
  # - query parameters that have the key-value syntax (e.g. '/?name=Danny')
  # - route parameters that are written just like arguments to a method, but in the URL (e.g. '/about/Danny')

# Now we can query data and allow a user to access data through a web application (how most of the Internet works)!

# Above we were just playing around and making a mess... Typically, we would have a fancy HTML template where the values above get dropped in (e.g. different people's Facebook profiles). Stay tuned!