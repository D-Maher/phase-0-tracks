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

def alias_maker(full_name)
  vowels = "aeiou".split('')
  consonants = "bcdfghjklmnpqrstvwxyz".split('')

  split_name = full_name.split(" ")
  reverse_split = split_name.reverse
  p reverse_split

  p reverse_split[0].split('')

  p vowels

  p consonants

end

alias_maker("Danny Maher")