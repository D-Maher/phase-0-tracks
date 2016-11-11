# BUSINESS LOGIC

module Shout
  
  def self.yell_angrily(words)
    words + "!!!" + " >:("
  end

  def self.yell_happily(words)
    words + "!!!" + " :)"
  end

end


# DRIVER CODE

p Shout.yell_angrily("Ruby is frustrating")

p Shout.yell_happily("Ruby is fun")