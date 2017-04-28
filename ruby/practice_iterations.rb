big_numbers = {
	"hundred" => 100, 
	"two hundred" => 200, 
	"three hundred" => 300, 
	"four hundred" => 400, 
	"five hundred" => 500
}

big_numbers.delete_if{|digit| (digit/100) > 1}
puts big_numbers
