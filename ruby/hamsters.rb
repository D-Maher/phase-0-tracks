puts "What is the hamster's name?"
  name = gets.chomp

  continue = false
  until continue == true
    puts "What is the hamster's volume level? (1-10)"
    volume = gets.chomp.to_i
    if volume == 1
      puts "Wow they are quiet"
      continue = true
    elsif volume == 2
      puts "Wow they are quiet"
      continue = true
    elsif volume == 3
      puts "Wow they are quiet"
      continue = true
    elsif volume == 4
      puts "Wow they are quiet"
      continue = true
    elsif volume == 5
      puts "Wow they are quiet"
      continue = true
    elsif volume == 6
      puts "Wow they are loud"
      continue = true
    elsif volume == 7
      puts "Wow they are loud"
      continue = true
    elsif volume == 8
      puts "Wow they are loud"
      continue = true
    elsif volume == 9
      puts "Wow they are loud"
      continue = true
    elsif volume == 10
      puts "Wow they are loud"
      continue = true
    else
      puts "Huh? That's not 1-10!"
    end
  end

puts "What is the fur color?"
  color = gets.chomp

puts "Good candidate for adoption?"
  candidate = gets.chomp
  good_candidate = false
  if candidate == "yes"
    puts "Great!"
    good_candidate = true
  else
    puts "We will make them into a model hamster!"
  end

puts "Estimated age?"
  age = gets.chomp
  if age.empty?
    age = nil
    puts "No worries!"
    age = "N/A"
  else
    puts "Great!"
    age = age.to_i
  end

  puts "Here is the data you've gathered:"
  puts "Name: #{name}"
  puts "Volume Level: #{volume}"
  puts "Fur Color: #{color}"
  puts "Good Candidate: #{candidate}"
  puts "Estimated Age: #{age}"