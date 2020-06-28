# frozen_string_literal: true

require_relative 'crud'
# Student object
class Student
  include Crud
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

  def 

  # default to string
  def to_s
    "First name : #{@first_name}!"
  end
end

gerardo_student = Student.new('Ger', 'Per', 'demo', 'demo@gmail.com', 'test123')

hashed_password = gerardo_student.create_hash_digest('test123')
puts hashed_password
