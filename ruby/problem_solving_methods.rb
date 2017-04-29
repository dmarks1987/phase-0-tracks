def search_array(array, input)
	array.each do |num|
		if num == input
			puts "#{input} is in the array and its index is #{array.index(input).to_i}"
		else
			puts nil
		end
  end
end
search_array([1,2,3,4,234,78765,21], 2)

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
    length.times do |num|
    #adds up the two integers and shovels it into the fibonacci array.
        temp = first_int
        first_int = second_int
        second_int = temp + second_int
        fibonacci << second_int
    end
  end
  fibonacci
end

fib(100)