puts "How many employees will we be processing today?"
employees = gets.chomp.to_i

employees.times {

puts "What is your name?"
name = gets.chomp

puts "How old are you? What year were you born?"
print "Age: "
age = gets.chomp.to_i
print "Year born: "
birth_year = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order you some? (y/n)"
garlic = gets.chomp

puts "Would you like to enroll in the company's health insurance? (y/n)"
insurance = gets.chomp


if age == 2016 - birth_year && (garlic == "y" || insurance == "y")
  result = "Probably not a vampire."
elsif age != 2016 - birth_year && (garlic == "n" || insurance == "n")
  result = "Probably a vampire."
elsif age != 2016 - birth_year && (garlic == "n" && insurance == "n")
  result = "Almost certainly a vampire!"
elsif name == "Drake Cula" || name == "Tu Fang"
  result = "We've definitely got ourselves a vampire here!"
else
  puts "Results inconclusive."
end

puts result

}