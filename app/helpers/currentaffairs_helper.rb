module CurrentaffairsHelper
	def select_todo
		arr=[]
		Todo.all.each do |i|
			arr << i.name
		end
		return arr
	end
end
