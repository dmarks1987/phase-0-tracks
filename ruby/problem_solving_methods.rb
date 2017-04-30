### Search Array ###

def search_array(array, input)
  index = 0
  num_in_array = nil
	array.each do |num|
		if num == input
			puts "#{input} is in the array and its index is #{index}"
			num_in_array = true
			return array
		end
		index +=1
  end
  return num_in_array
end
puts "-----Search Array-----"
p search_array([1,2,3,4,234,78765,21], 0)
########################################################################

### Fibonacci Method ###
def fib(length)
  #edge case code
  if length == 0 || length == 1
    puts 0
  elsif length < 0
    puts nil
  else
    first_int = 0
    second_int = 1
    fibonacci = Array.new
    #shovel in first two indexes of the sequence
    fibonacci << 0
    fibonacci << 1
    #since the first two indexes are already shoveled in, we subtract 2 from the inputted length.
    length = length - 2
    length.times do
    #adds up the two integers and shovels it into the fibonacci array.
        temp = first_int
        first_int = second_int
        second_int = temp + second_int
        fibonacci << second_int
    end
  end
  fibonacci
end
puts "-----Fibonacci Method-----"
p fib(100)
##########################################################################

###Bubble Sort Algorithm###
# A sorting method that iterates through every item in an array
# by pair and compares them. The finished alogirthm has every
# item sorted from lowest to highest (or highest to lowest depending
# on the parameters set

def bubble_sort(array)
	n = array.length

	loop do #going to keep going until swapped is false
		swapped = false
		# we run this one less time than the amount of elements in the array
		# because there is no element after the last element in the array.
		(n-1).times do |i|
			if array[i] > array[i + 1]
				array[i], array[i + 1] = array[i + 1], array[i]
				swapped = true
			end
		end
		break if not swapped
	end
	array
end

puts "-----Bubble Sort Algorithm-----"
p bubble_sort([5,2,7,9,5,2,1,5,3,4,2,6,7,1,9])
###########################################################################

### Quick Sort Algorithm ###
# A divide-and-conquer sorting algorithm that breaks the array into
# pieces, recursively sorts smaller pieces, then puts them all together
# and uses a pivot point to accomplish that goal.

class Array
	def quicksort
		return [] if empty?

		#[34, 2, 1, 5, 3]
		#[34, 2, 5, 3]
		# left = [34, 2]
		# right = [5,3]
		pivot = delete_at(rand(size))
		left, right = partition(&pivot.method(:>))

		return *left.quicksort, pivot, *right.quicksort
	end
end

arr = [34,2,1,5,3]
puts "-----Quick Sort Algorithm-----"
p arr.quicksort
###########################################################################

### Insertion Sort Algorithm ###
# An efficient algorithm for sorting a small number of elements.
# First step — create new array(final), where our final output 
# will be stored. Next, insert our pivot value (first value from 
# initial array) in the final. Then compare each item (i) in initial 
# array (except pivot) with items in final. If it is less than current,
# insert it before the current item. If not — move to the next item
# in final. If all values in final are less than i — insert it in the
# end of an array. After all iterations method should return sorted
# array(final).

def insertion_sort(array)
    #place pivot value from ititial array into final.
    final = [array[0]]
    array.delete_at(0)
    # main code
    array.each do |i|
        final_index = 0
        while final_index < final.length
            if i <= final[final_index]
                final.insert(final_index,i)
                break
            elsif final_index == final.length-1
                final.insert(final_index+1,i)
                break
            end
            final_index+=1
        end
    end
    # output
    final
end

puts "-----Insertion Sort Algorithm-----"
array = [1, 5, 3, 4, 6, 3]
p insertion_sort(array)

############################################################################

### My own sorting algorithm -- Sort odd and even numbers in order. ###

#start by declaring an array with both odd an even numbers

new_array = [12, 1, 43, 22, 6, 17, 56, 31, 102, 101, 23]

def evens_then_odds(new_array)
# start by creating an even array and odd array which will eventually
# be joined into a final array.
  even_array = []
  odd_array = []
  final_array = []
# main code. This filters the array for even and odd values, which will be
# shoveled into their corresponding separate arrays.
	new_array.each do |value|
		if value.to_i % 2 == 0
			even_array << value
		else 
			odd_array << value
		end
	end
# sort even array in order (using previously coded bubblesort method)
	bubble_sort(even_array)
# sort odd array in order (using previously coded bubblesort method)
	bubble_sort(odd_array)
# Here we shovel each array into the final array, then flatten the final array
# to concatenate it into a single array with no nested arrays.
	final_array << even_array
	final_array << odd_array
	final_array.flatten
end

puts "--Here's my own Algorithm. Sorts even and odd numbers in order--"
p evens_then_odds(new_array)