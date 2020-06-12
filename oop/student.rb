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
	
end

example = Student.new

puts example