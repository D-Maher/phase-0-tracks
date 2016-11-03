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

  #-------------------------------------------------------------------

def swap_names(first_last)
  last_first = first_last.split(' ').reverse # returns array of ["last name", "first name"]
end

def alias_maker(first_last)
  index = 0

  vowels = "aeiou".split('')
  consonants = "bcdfghjklmnpqrstvwxyz".split('')

  last_first = swap_names(first_last)

  alias_first_letters = last_first[0].split('')

  alias_last_letters = last_first[1].split('')

  alias_first_letters.each do |letter|
    letter = letter.downcase
    if vowels.include?(letter)
      p letter
      # vowel_index = vowels.index(alias_first_letters[index])
      # new_vowel = vowels[vowel_index].next
      # p new_vowel
    # elsif consonants.include(letter)
    #   letter = 
    elsif consonants.include?(letter)
      p letter
    end

  end

  alias_last_letters.each do |letter|
    letter = letter.downcase
    if vowels.include?(letter)
      p letter
    elsif consonants.include?(letter)
      p letter
    end
  end
  
end


alias_maker("Danny Maher")