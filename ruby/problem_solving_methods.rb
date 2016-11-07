# PSEUDOCODE

  # Search method that takes an array of integers and an integer to search for within that array
    # If integer is inside the array, return the index of the integer
      # i.e. if array 
    # Otherwise return 'nil'

  # Fibonacci calculator method
    # takes a number of Fib. terms to generate and returns array of those terms
    # for a given "current" number in the array (at current index), add the number directly before the current number (at current index - 1) to get the next number in the array (at current index + 1)
    # start fib_array with 0 and 1 as the first two items

  # bubble sort method
    # method takes an array of integers
    # method sorts integers using the following algorithm:
      # method "looks" at first two items in the array...
        # if the first item is greater than the second, the method swaps the position of those items
        # otherwise, method moves on and looks at second and third items in the array and does the same comparison, swapping if necessary

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

# test_array = [2, 7, 55, 13, 24, 17, 9]

# search_array(test_array, 24)


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

# fib_calc(6)

# fib_calc(100)


# Release 2

def bubble_sort(int_array)
  loop do
    swapped = false
    (int_array.length - 1).times do |index|
      if int_array[index] > int_array[index + 1]
        int_array[index], int_array[index + 1] = int_array[index + 1], int_array[index]
        swapped = true
      end
    end
    
    if swapped == false
      break
    end
  end
  p int_array
end

bubble_array = [4, 99, 33, 2, 3, 555, 90, 24]

p bubble_array

bubble_sort(bubble_array)