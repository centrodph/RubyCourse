# frozen_string_literal: true

module Crud
  require 'bcrypt'
  puts 'Module CRUD activated'

  def Crud.create_hash_digest(password)
    BCrypt::Password.create(password)
  end

  def Crud.verify_hash_digest(password)
    BCrypt::Password.new(password)
  end

  def Crud.secure_users_password(users)
    users.each do |model|
      model[:password] = Crud.create_hash_digest(model[:password])
    end
    users
  end

  def Crud.authenticate_user(username, password, list_of_users)
    list_of_users.each do |user_record|
      return user_record if user_record[:username] == username && Crud.verify_hash_digest(user_record[:password]) == password
    end
    'Credentials were not correct'
  end
end
