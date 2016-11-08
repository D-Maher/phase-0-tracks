class Santa

  def initialize
    puts "Initializing Santa instance..."
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
  end

end

# Santa class test code
santa_1 = Santa.new

santa_1.speak
santa_1.eat_milk_and_cookies("chocolate chip")