puts "What is your first name?"
first_name = gets.chomp
puts "What is you last name?"
last_name = gets.chomp

full_name = "#{first_name} #{last_name}"
puts "Your full name is #{full_name}"
puts "Your full name reversed id #{full_name.reverse}"
puts "Your name has #{first_name.length + last_name.length} characters in it"