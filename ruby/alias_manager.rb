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

$vowels = "aeiou".split('') # an array of all vowels in alpha order
$consonants = "bcdfghjklmnpqrstvwxyz".split('') # an array of all consonants in alpha order

def swap_names(given_name)
  last_first_array = given_name.split(' ').reverse # returns array of ["last name", "first name"]
  last_first_array
end

def split_names(name_array)
  name_letters = name_array.split('')
  name_letters.each { |letter| letter.downcase }
  p name_letters
end

def next_vowel
  # $vowels.include?
end




def alias_maker(name)
  swap_array = swap_names(name)
  # last_name_letters = split_names(swap_array[0]). 
  # first_name_letters = split_names(swap_array[1])
  next_vowel
end

alias_maker("Danny Maher")




















#
              # def next_vowel(letter)
              #   index = 0
              #   while index < alias_first_letters.length
              #     if vowels.include?(alias_first_letters[index])
              #       alias_first_letters[index] = vowels.index(alias_first_letters[index])
              #     else
              #     end
              #   end
              #   index += 1
              #   alias_first_letters[index]
              # end



              #   last_first = swap_names(first_last)

              #   alias_first_letters = last_first[0].split('')

              #   alias_last_letters = last_first[1].split('')

              # def alias_maker(first_last)
              #   index = 0
              #   alias_first_letters.each do |letter|
              #     letter = letter.downcase
              #     p next_vowel(letter)
              #   end

              #   alias_last_letters.each do |letter|
              #     letter = letter.downcase
              #     if vowels.include?(letter)
              #       p letter
              #     elsif consonants.include?(letter)
              #       p letter
              #     end
              #   end
                
              # end