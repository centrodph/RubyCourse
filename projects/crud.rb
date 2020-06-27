# frozen_string_literal: true

# Crud module. This module allow you encrypt and authenticate users using BCrypt
module Crud
  require 'bcrypt'
  puts 'Module CRUD activated'

  def self.create_hash_digest(password)
    BCrypt::Password.create(password)
  end

  def self.verify_hash_digest(password)
    BCrypt::Password.new(password)
  end

  def self.secure_users_password(users)
    users.each do |model|
      model[:password] = create_hash_digest(model[:password])
    end
    users
  end

  def self.authenticate_user(username, password, list_of_users)
    list_of_users.each do |user_record|
      return user_record if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
    end
    'Credentials were not correct'
  end
end
