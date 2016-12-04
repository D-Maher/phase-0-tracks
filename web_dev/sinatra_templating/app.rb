# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# 9.5 new database
groceries_db = SQLite3::Database.new("groceries.db")
groceries_db.results_as_hash = true


# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources



# 9.5 WORK

get '/groceries' do
  @groceries = groceries_db.execute("SELECT * FROM groceries")
  erb :groceries
end

get '/groceries/new' do
  erb :new_grocery
end

post '/groceries' do
  groceries_db.execute("INSERT INTO groceries (item, quantity) VALUES (?, ?)", [params['item'], params['quantity'].to_i])
  redirect '/groceries'
end