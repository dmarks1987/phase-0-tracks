class TodoList

	attr_accessor :initial_array

	def initialize (initial_array)
		@initial_array = initial_array
	end

	def get_items()

	end

	def add_item(initial_array, to_add)
		@initial_array << to_add
		@initial_array
	end

	def delete_item(intial_array, to_delete)
		@initial_array.delete(to_delete)
		@initial_array
	end

end

list = TodoList.new(["butts", "asses"])

p list

list.add_item(list, "penis")

p list

list.delete_item(list, "penis")

p list