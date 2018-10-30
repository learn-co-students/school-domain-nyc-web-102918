# code here!
class School
	attr_accessor :roster

	def initialize(name="unknown school")
		@name=name
		@roster={}
	end
	def add_student(student,grade)
		if @roster[grade]
			@roster[grade]<< student
		else @roster[grade]=[student]
		end
	end
	
	def grade(grade_num)
		@roster[grade_num]
	end
	
	def sort
		
		@roster.each{|grade,people|roster[grade]=people.sort}
	end
		
end

# 0


	