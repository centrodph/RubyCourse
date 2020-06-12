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
	# getter method
	def first_name
		@first_name
	end

end

example = Student.new

example.first_name = "Gerardo"

# print full instance
puts example

# print just the name
puts example.first_name