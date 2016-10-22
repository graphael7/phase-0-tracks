class TodoList

	def initialize(x)
		@initial_list = x
	end

	def get_items
		@initial_list
	end

	def add_item(add_to_list)
		@initial_list.push(add_to_list)
	end

	def delete_item(delete_from_list)
		@initial_list.delete(delete_from_list)
	end

	def get_item(num)
		@initial_list[num]
	end
end