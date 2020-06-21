# frozen_string_literal: true

require_relative 'crud'

users = [
  { username: 'user1', password: 'password1' },
  { username: 'user2', password: 'password2' },
  { username: 'user3', password: 'password3' },
  { username: 'user4', password: 'password4' }
]

hash_users = Crud.secure_users_password(users)
puts hash_users
