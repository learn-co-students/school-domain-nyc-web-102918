class School
	attr_reader :roster

	def initialize(name)
		@name = name
		@roster = {}
	end

	def add_student(student, year)
		if @roster[year].nil?
			@roster[year] = []
		end

		@roster[year] << student
	end

	def grade(year)
		@roster[year]
	end

	def sort
		out = {}
		@roster.each do |key, val|
			out[key] = val.sort
		end

		out
	end
end