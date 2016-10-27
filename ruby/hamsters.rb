puts "What is the hamster's name?"
name = gets.chomp

puts "How loud is this hamster on a scale from 1-10?"
volume = gets.chomp.to_i

until (1..10).include?(volume)
  puts "Please select a number between 1 and 10."
  volume = gets.chomp.to_i
end