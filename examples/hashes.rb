sample_hash =  {'a' => 1, 'b' => 2, 'c' => 3}
my_details = {'name' => 'Gerardo', 'color' => 'red'}

# print value
puts my_details['name']


# print the hash
puts sample_hash

# using symbols
symbols = { a: 1, b: 2, c: 3 }
puts symbols

# get keys
puts symbols.keys

# get values
puts symbols.values

# iterate

symbols.each do |key, value|
    puts "the key :#{key.class} the value: #{value}"
end    


other_symbols = { :my_symbol => 'test', :other_key => 'example' }

other_symbols.each do |key, value|
    puts "key: #{key}/#{key.class} value: #{value}/#{value.class}"
end


# add elment
other_symbols[:added_key] = 'ruby'
p other_symbols

# change value
other_symbols[:my_symbol] = 234
p other_symbols


# one line 
other_symbols.each { |some_key, some_value| puts "#{some_key} : #{some_value}"}


# select
puts other_symbols.select { |k, v| v.is_a?(String)}

# clean

puts other_symbols.each { |k, v| other_symbols.delete(k) if v.is_a?(String)}