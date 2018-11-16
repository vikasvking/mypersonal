module TodosHelper

	def taskcounter i
		c=0
		z=0
		Currentaffair.all.each do |ca|
			if ca.todo==i.name && ca.done==true
				c+=1
			end
			if ca.todo==i.name
				z+=1
			end
		end

		a=i.tasks.where(done: true).count+c
		b=i.tasks.count+z

		return (a*100)/b rescue 0
	end
end
