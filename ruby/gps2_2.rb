# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
	# default_list = "carrots apples cereal pizza"
	# convert default_list into an array
  # iterate over array and map indices to keys of hash.
  # quanity_list = hash
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?] hash

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: push the aruments into the hash
# output: the updated hash

# Method to remove an item from the list
# input: item
# steps: delete method on hash
# output:the updated hash

# Method to update the quantity of an item
# input: string (item), int (quantity)
# steps: search for the item in a loop, then replace its value with the quantity in the argument
# output: the updated hash, the new quantity of whatever item

# Method to print a list and make it look pretty
# input: the current version of the hash
# steps: loop over hash: puts "#{key} - #{value}"
# output: pretty list and the hash

def create_list(item)
	grocery_list = {}
	item_list = item.split(' ')
	item_list.each do |grocery|
		grocery_list[grocery] = 1
	end
	grocery_list
end

def add_item(groceries, new_item, quantity = 1)
	groceries[new_item] = quantity
	groceries
end

def remove_item(groceries, new_item)
	groceries.each do |grocery, amount|
		if grocery == new_item
			groceries.delete(grocery)
		end
	end
	groceries
end

def update_quantity(groceries, new_item, quantity = 1)
	groceries.each do |grocery, amount|
		if grocery == new_item
			groceries[grocery] = amount - quantity
		end
	end
	groceries
end

def pretty_list(groceries)
	puts "Here is the groceries we need:"
	groceries.each do |grocery, amount|
		puts "#{grocery} - #{amount}"
	end
end

our_list = create_list("apples oranges carrots")
p our_list
add_item(our_list, "raisins", 5)
p our_list
remove_item(our_list, "raisins")
p our_list
update_quantity(our_list, "carrots", 1)
p our_list
pretty_list(our_list)

