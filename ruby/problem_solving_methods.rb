# RELEASE 0

# PSEUDOCODE

  # Search method that takes an array of integers and an integer to search for within that array
    # If integer is inside the array, return the index of the integer
      # i.e. if array 
    # Otherwise return 'nil'

  # Fibonacci calculator method
    # takes a number of Fib. terms to generate and returns array of those terms
    # for a given "current" number in the array (at current index), add the number directly before the current number (at current index - 1) to get the next number in the array (at current index + 1)


# --------------------------------------------------------------------

# Release 0

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


# Release 1

def fib(number)
