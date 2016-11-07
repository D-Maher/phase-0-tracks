# RELEASE 0

# PSEUDOCODE

  # Search method that takes an array of integers and an integer to search for within that array
    # If integer is inside the array, return the index of the integer
      # i.e. if array 
    # Otherwise return 'nil'

  # Fibonacci calculator method
    # takes a number of Fib. terms to generate and returns array of those terms
    # for a given "current" number in the array (at current index), add the number directly before the current number (at current index - 1) to get the next number in the array (at current index + 1)
    # start fib_array with 0 and 1 as the first two terms


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

search_array(test_array, 24)


# Release 1


def fib_calc(number)
  fib_array = [0, 1]
  index = 2
  while index < number
    fib_array << fib_array[index - 1] + fib_array[index - 2]
    index += 1
  end
  p fib_array
end

fib_calc(6)

fib_calc(100)