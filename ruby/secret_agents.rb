=begin

ENCRYPT METHOD

- advance each letter one letter forward
  - run .next on each index
  - use ! to change index in place
- spaces remain as spaces
  

DECRYPT METHOD

- reverse encrypt
- shift letters back one index
  - use alphabet string for index reference

=end


def encrypt(password)
  index = 0 # must be inside method (local variable)

  while index < password.length       
    if password[index] == "z" # edge case
      password[index] = "a" # shifts z to a instead of aa
    elsif password[index] == " " # when password character is a space
      # do nothing
    else
      password[index] = password[index].next! # shift to next letter up
    end
  index += 1 # increments index of password by +1
  end

  puts "#{password}"

  return password # returns the value of running encrypt on a given password
end


def decrypt(password)
  index = 0 # must be inside method (local variable)     
  alphabet = "abcdefghijklmnopqrstuvwxyz"

  while index < password.length
    if password[index] == " " # when password character is a space
      # do nothing
    else
      alpha_index = alphabet.index(password[index]) # .index here is a built-in method
      alpha_index -= 1 # decrements index of alphabet by -1
      password[index] = alphabet[alpha_index]
    end
    index += 1
  end
  puts "#{password}"
end


# Driver Code

quit = false
while quit != true
  puts "Please enter the number of the desired option below."
  puts "  1. Encrypt a password (must do before option 2)"
  puts "  2. Decrypt a password"
  puts "  3. Exit the program"
  choice = gets.chomp.to_i

  case choice
    when 1
      puts "Enter password:"
      password = gets.chomp.downcase
      password = encrypt(password)
    when 2
      if password.nil? == true
        puts "Please select option 1 first."
      else
        decrypt(password)
      end
    when 3
      quit = true
    else
      puts "Please enter valid option!"
    end
end

# Release 3
encrypt("abc")
encrypt("zed")
decrypt("bcd")
decrypt("afe")

# test of individual methods
encrypt(password)
decrypt(password)

# Release 4
decrypt(encrypt("swordfish"))
# This nested method call works because the encrypt method is returning
# the password and decrypt is accepting the returned value as an argument



=begin
PSEUDOCODE:

1. use a menu to ask user what they would like to do
  - menu options in case statement
2. asks a secret agent (the user) what they would like to do
  - options of menu: 
    - asks user for the password to encrypt
    - lets user decrypt that password 
    - quit program
=end
