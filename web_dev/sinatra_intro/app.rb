# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end



# RELEASE 0 - Add Routes

# write a '/contact' route that displays an address
get '/contact' do
  "Sample address: 724 Willow Breeze Ln, Smalltown, IL 12345"
end

# write a 'great_job' route that takes a person's name as a query parameter to say "Good job, #{person's_name}!"
  # if no query parameter, says "Good job!"
get '/great_job' do
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end

# write an 'add' route that takes two numbers as route parameters, adds them together, and responds with the result
get '/add/:number_1/:number_2' do
  result = params[:number_1].to_i + params[:number_2].to_i
  result.to_s
end

# write a '/search_by_campus' route that allows the user to search the student database for students attending a particular campus (taken as a query parameter)
get '/search_by_campus' do
  campus = params[:campus]
  students = db.execute("SELECT * FROM students WHERE campus=?", [campus])  
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>" 
    response << "Name: #{student['name']}<br>" 
    response << "Age: #{student['age']}<br><br>"
  end
  "Below is a list of the students attending the #{campus} campus:" + "<br><br>" + response.to_s
end