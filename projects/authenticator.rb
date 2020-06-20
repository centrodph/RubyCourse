# frozen_string_literal: true

$users = [
  { username: 'user1', password: 'password1' },
  { username: 'user2', password: 'password2' },
  { username: 'user3', password: 'password3' },
  { username: 'user4', password: 'password4' }
]

def check_credentials(user, pass)
  $users.each do |model|
    return model if model[:username] == user && pass == model[:password]
  end
  nil
end

def ask_credentials
  print 'Enter username:'
  user = gets.chomp
  print 'Enter password:'
  pass = gets.chomp

  check_credentials(user, pass)
end

puts 'Welcome to authenticator'

attempts = 1
while attempts < 4
  result = ask_credentials
  if result
    puts result
    break
  else
    puts 'Invalid credentials'
  end
  puts 'Press n to quit or any other key to continue'
  input = gets.chomp.downcase
  break if input == 'n'

  attempts += 1
end
