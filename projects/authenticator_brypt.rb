# frozen_string_literal: true

require 'bcrypt'

users = [
  { username: 'user1', password: 'password1' },
  { username: 'user2', password: 'password2' },
  { username: 'user3', password: 'password3' },
  { username: 'user4', password: 'password4' }
]

def create_hash_digest(password)
  BCrypt::Password.create(password)
end

def verify_hash_digest(password)
  BCrypt::Password.new(password)
end

def secure_users_password(users)
  users.each do |model|
    model[:password] = create_hash_digest(model[:password])
  end
end

def authenticate_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    return user_record if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
  end
  'Credentials were not correct'
end
secure_users_password(users)
# puts users
puts authenticate_user('user1', 'password1', users)
puts authenticate_user('user1', 'passwordWrong', users)
