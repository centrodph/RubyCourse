class Student
	@first_name
	@last_name
	@email
	@username
	@password

	# default to string
	def to_s
		"First name : #{@first_name}!"
	end

	# setter method
	def first_name=(name)
		@first_name = name
	end

end

example = Student.new

example.first_name = "Gerardo"

puts example