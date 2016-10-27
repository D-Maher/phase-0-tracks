=begin

ENCRYPT METHOD

- advance each letter one letter forward
  - run .next on each index
  - use ! to change index in place
- spaces remain as spaces
  

DECRYPT METHOD

- reverse encrypt
- go backward one letter
  - 

=end


def encrypt(password)
  index = 0
  while index < password.length
    if password[index] == "z"
      password[index] = "a"
    elsif password[index] == " "
    else
      password[index] = password[index].next!
    end
  index += 1
  end
  puts "#{password}"
  return password
end


def decrypt(password)
  index = 0

  alphabet = "abcdefghijklmnopqrstuvwxyz"
  while index < password.length
    if password[index] == " "
    else
      temp = alphabet.index(password[index])
      temp -= 1
      password[index] = alphabet[temp]
    end
    index += 1
  end
  puts "#{password}"
end


# MAIN - driver code

quit = false
while quit != true
  puts "What would you like to do?"
  puts "1. Encrypt a password (must do before option 2)"
  puts "2. Decrypt a password"
  puts "3. Exit the program"
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

encrypt("abc")
encrypt("zed")
decrypt("bcd")
decrypt("afe")

encrypt(password)
decrypt(password)

decrypt(encrypt("swordfish"))
# This nested method call works because the encrypt method is returning
# the password and decrypt is accepting the returned value as an argument



=begin
  
1. use a menu to ask user what they would like to do
  - menu as while loop
2. options of menu: 
  -Asks a secret agent (the user) whether they 
   would like to decrypt or encrypt a password
  -Asks them for the password
  -Conducts the requested operation, 
   prints the result to the screen
  -Quit program
  
=end
