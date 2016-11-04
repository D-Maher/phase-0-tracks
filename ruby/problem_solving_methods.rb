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
    if array.include?(int)
      index
    else
      nil
    end
    index += 1
  end
end

test_array = [2, 7, 55, 13, 24, 17, 9]

p search_array(test_array, 24)