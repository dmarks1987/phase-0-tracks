module ItemManagement

	def get_items()
	end

	def add_item(initial_array, to_add)
		initial_array << to_add
		initial_array
	end

	def delete_item(intial_array, to_delete)
		initial_array.delete(to_delete)
		initial_array
	end


end


class TodoList
	include ItemManagement

	initialize (initial_array)
		initial_array
	end

end
