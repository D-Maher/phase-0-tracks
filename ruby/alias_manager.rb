# PSEUDOCODE

  # alias method
    # swap the first and last name

    # change all of the vowels (a, e, i, o, u) to the next vowel (e, i, o, u, a)
      # if vowel, change to next vowel (a => e, e => i, etc)

    # change all of the consonants to the next consonant
      # if consonant, change to next consonant (b => c, c => d, d => f, etc)

  # user interface
    # convert user input to lowercase right when obtained
    # capitalize later

  #------------------------------------------------------------------




# In all code below, first_name represents the REAL first name of the agent, and last_name represents the REAL last name of the agent.

# BUSINESS LOGIC

$vowels = "aeiou".split('') # an array of all vowels in alpha order
$consonants = "bcdfghjklmnpqrstvwxyz".split('') # an array of all consonants in alpha order

def swap_names(given_name) # WORKS!
  last_first_array = given_name.split(' ').reverse # returns array of ["last name", "first name"]
  last_first_array
end

def split_names(name_string) # WORKS!
  name_letters = name_string.split('')
  name_letters.map! { |letter| letter.downcase }
  name_letters
end

def next_vowel(letters_array) # WORKS!
  index = 0
  while index < letters_array.length
    if letters_array[index] == "u"
      letters_array[index] = "a"
    elsif $vowels.include?(letters_array[index]) # if letter is a vowel
      vowel_index = $vowels.index(letters_array[index])
      letters_array[index] = $vowels[vowel_index.next]
      letters_array
    end
    index += 1
  end
end

def next_consonant(letters_array)
  index = 0
  while index < letters_array.length
    if letters_array[index] == "z"
      letters_array[index] = "b"
    elsif $consonants.include?(letters_array[index]) # if letter is a consonant
      consonant_index = $consonants.index(letters_array[index])
      letters_array[index] = $consonants[consonant_index.next]
      letters_array
    end
    index += 1
  end
end


def alias_generator(name)
  swap_array = swap_names(name)

  last_name_letters = split_names(swap_array[0]) 
  first_name_letters = split_names(swap_array[1])
  

  next_vowel(last_name_letters)
  next_vowel(first_name_letters)

  next_consonant(last_name_letters)
  next_consonant(first_name_letters)

  last_name_letters
  first_name_letters

  alias_name = last_name_letters.join.capitalize + " " + first_name_letters.join.capitalize

  puts alias_name
end



# DRIVER CODE


alias_generator("Zack Button")


