# BUSINESS LOGIC

  # module Shout # plain module version (note 'self' keyword)
    
  #   def self.yell_angrily(words)
  #     words + "!!!" + " >:("
  #   end

  #   def self.yell_happily(words)
  #     words + "!!!" + " :)"
  #   end

  # end

module Shout # mixin version (note lack of 'self' keyword)

  def yell_angrily(words)
      words + "!!!" + " >:("
  end

  def yell_happily(words)
    words + "!!!" + " :)"
  end

end

class SportsFan
  include Shout
end

class SentientGoat
  include Shout
end


# DRIVER CODE

blackhawks_fan = SportsFan.new
p blackhawks_fan.yell_happily("Go Blackhawks")
p blackhawks_fan.yell_angrily("Hey ref, that call was utter baloney")

smart_goat = SentientGoat.new
p smart_goat.yell_happily("Woo, I can talk")
p smart_goat.yell_angrily("What am I??")