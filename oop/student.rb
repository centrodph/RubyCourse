class Student
	# read more https://www.rubyguides.com/2018/11/attr_accessor/
	attr_accessor :first_name, :last_name, :email
	attr_reader :username

	@first_name
	@last_name
	@email
	@username
	@password

	# initialize
	def initialize(first_name, last_name, username, email, password)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @username = username
    @password = password
	end

	# default to string
	def to_s
		"First name : #{@first_name}!"
	end

	# setter method
	# def first_name=(name)
	# 	@first_name = name
	# end

	# getter method
	# def first_name
	# 	@first_name
	# end

end

# example = Student.new
# example.first_name = "Gerardo"

# # print full instance
# puts example

# # print just the name
# puts example.first_name

# other student
ex2 = Student.new("Ger", "Per", "demo", "demo@gmail.com", "test123")

puts ex2