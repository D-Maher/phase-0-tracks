puts "What is your name?"
name = gets.chomp

puts "How old are you? What year were you born?"
print "Age: "
age = gets.chomp.to_i
print "Year born: "
birth_year = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order you some?"
garlic = gets.chomp

puts "Would you like to enroll in the company's health insurance?"
insurance = gets.chomp


if age == 2016 - birth_year && (garlic == "yes" || insurance == "yes")
  result = "Probably not a vampire."
elsif age != 2016 - birth_year && (garlic == "no" || insurance == "no")
  result = "Probably a vampire."
end