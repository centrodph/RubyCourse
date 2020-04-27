# if else
if true
    puts "hello"
else 
    puts "bye"
end    

puts "Enter a number"
first_number = gets.chomp.to_f


if first_number > 10
    puts "#{first_number} is greater than 10"    
elsif first_number > 5
    puts "#{first_number} is greater than 5 but lower than 10"    
else    
    puts "#{first_number} is lower than 5"    
end

