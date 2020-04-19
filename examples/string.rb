first_name = "Gerardo"
last_name = "Perrucci"
puts first_name + " " + last_name

# string interpolation
puts "my first name is #{first_name}!"

full_name = "#{first_name} #{last_name}"

puts "typeof full_name = #{full_name.class}"


# puts full_name.methods



puts full_name.nil?

puts full_name.split("").join("_").split("_").join("")