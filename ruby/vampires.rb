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

result = "Results inconclusive."

# The if statements below CANNOT be changed to an if/elsif/else block
# because the first 'if' or 'elsif' that is matched will execute its code
if age == 2016 - birth_year && (garlic == "y" || insurance == "y")
  result = "#{name} is probably not a vampire."
end

if age != 2016 - birth_year && (garlic == "n" || insurance == "n")
  result = "#{name} is probably a vampire."
end

if age != 2016 - birth_year && (garlic == "n" && insurance == "n")
  result = "#{name} is almost certainly a vampire!"
end

if name == "Drake Cula" || name == "Tu Fang"
  result = "Okay... #{name} is definitely a vampire."
end

# allergy = nil
# until allergy == "sunshine"
#   puts "Please list your allergies below... you know, for health reasons and all that."
#   allergy = gets.chomp
#   if allergy == "sunshine"
#     result = "Probably a vampire."
#   elsif allergy == "done"
#     break
#   else
#   end
# end

puts "Our survey says... #{result}"

}