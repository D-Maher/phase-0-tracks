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

