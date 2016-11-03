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
  split_name = full_name.split(" ")
  reverse_split = split_name.reverse
  reverse_name = reverse_split[0] + " " + reverse_split[1]
  p reverse_name
end

alias_maker("Danny Maher")