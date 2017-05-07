class TodoList

	attr_accessor :initial_array, :current_array

	def initialize (initial_array)
		@current_array = initial_array
		@current_array
	end

	def get_items
		@current_array
	end

	def get_item(index)
		@current_array[index]
	end

	def add_item(to_add)
		@current_array << to_add
		@current_array
	end

	def delete_item(to_delete)
		@current_array.delete(to_delete)
		@current_array
	end

end

# list = TodoList.new(["butts", "asses"])

# p list

# list.add_item(list, "penis")

# p list

# list.delete_item(list, "penis")

# p list