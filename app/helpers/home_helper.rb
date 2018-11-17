module HomeHelper
	def taskcounter i
		c=0
		z=0
		Currentaffair.all.each do |ca|
			if ca.todo==i.name && ca.done==true
				c+=1
			end
			if ca.todo==i.name && ca.done!=true
				z+=1
			end
		end

		return [c,z]
	end
end
