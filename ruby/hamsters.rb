puts "What is the hamster's name?"
name = gets.chomp

puts "How loud is this hamster on a scale from 1-10?"
  volume = gets.chomp.to_i

  until (1..10).include?(volume)
    puts "Please select a number between 1 and 10."
    volume = gets.chomp.to_i
  end

puts "What color is the hamster's fur?"
  color = gets.chomp

puts "Is this hamster a good candidate for adoption? (yes/no)"
  candidate = gets.chomp

  until candidate == "yes" || candidate == "no"
    puts "Error. Please type 'yes' or 'no'."
    candidate = gets.chomp
  end

puts "What do you suppose this hamster's age is?"
  age = gets.chomp.to_i

  until age.is_a?(Fixnum) && age > 0
    puts "Error. Please enter a valid number (greater than 0) for the hamster's age."
    age = gets.chomp.to_i
  end

puts "Excellent! #{name} is now in our system."
puts "Here is the data we collected for #{name} in this session:"
puts "Loudness: #{volume}"
puts "Fur color: #{color}"
puts "Good candidate for adoption?: #{candidate}"
puts "Age: #{age}"