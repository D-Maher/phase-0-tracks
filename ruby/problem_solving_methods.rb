# RELEASE 0

# PSEUDOCODE

  # Search method that takes an array of integers and an integer to search for within that array
    # If integer is inside the array, return the index of the integer
      # i.e. if array 
    # Otherwise return 'nil'



# --------------------------------------------------------------------

def search_array(array, integer)
  index = 0
  array.each do |int|
    if int == integer
      puts "#{integer} was found in the array! It's index is #{index}."
    else
      nil
    end
    index += 1
  end
end

test_array = [2, 7, 55, 13, 24, 17, 9]

search_array(test_array, 5)