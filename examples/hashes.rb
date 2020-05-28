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

