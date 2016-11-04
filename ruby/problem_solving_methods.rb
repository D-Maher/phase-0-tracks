# RELEASE 0

# PSEUDOCODE

  # Search method that takes an array of integers and an integer to search for within that array
    # If integer is inside the array, return the index of the integer
      # i.e. if array 
    # Otherwise return 'nil'



# --------------------------------------------------------------------

def search_array(array, integer)
  index = 0
  while index < array.length
    if array.include?(integer)
      index
    else
      nil
    end
    index += 1
  end
  index 
end

array_for_search = [2, 7, 55, 13, 24, 17, 9]

p search_array(array_for_search, 24)