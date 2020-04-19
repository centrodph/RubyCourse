puts 1 + 2


puts 10 / 4

puts 10.to_f / 4

puts rand()

puts rand(10)

puts rand(1000)


20.times { puts rand(100) }


30.times { print "-" }
puts
puts "Enter firt number"
first_number = gets.chomp
puts "Enter second number"
second_number = gets.chomp
30.times { print "-" }
puts
puts "The multiplication is : #{first_number.to_i * second_number.to_i}"
