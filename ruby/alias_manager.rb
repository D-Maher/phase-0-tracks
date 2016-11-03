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
  last_first = first_last.split(' ').reverse
end

def alias_maker(first_last)
  vowels = "aeiou".split('')
  consonants = "bcdfghjklmnpqrstvwxyz".split('')

  p swap_names(first_last)

  #swap_first = last_first[0].split('')
  #
  #alias_first.each do |letter|
  
end


alias_maker("Danny Maher")