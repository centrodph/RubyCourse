# frozen_string_literal: true

my_arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]

def print_line
  puts ''
  15.times { print '-' }
  puts ''
end

print_line
puts my_arr
print_line
print my_arr
print_line

# last element
puts my_arr.last

# create shuffle array
my_arr2 = (1..100).to_a.shuffle
print my_arr2

my_arr3 = (1..10).to_a.reverse
print my_arr3

# create reange of letters
my_letters = 'a'..'z'
my_letters = my_letters.to_a # mutate
print my_letters.length

print_line

# add elments
my_arr << 33
print my_arr
print_line

my_arr.unshift(44)
print my_arr
print_line

# uniq
print_line
my_arr.unshift(3)
print my_arr.uniq! # mutate
print_line
print my_arr

# include
print_line
print my_arr.include?(44)
print_line

# push
print_line
print my_arr.push(4422)
print_line

# remove
print_line
print my_arr.pop
print_line
print my_arr
print_line

# iterate
print_line
z = %w[my name is Gerardo I am very happy learning ruby]
print z
print_line

z.each do |i|
  print_line
  print i
  print_line
end

z.each do |item|
  print "#{item} "
end

# each
print_line
z.each { |ab| print "#{ab} _ " }
print_line

# select
print_line
n = (1..100).to_a
puts 'Odd numbers'
n.select(&:odd?).each { |y| print "#{y}_" }
print_line
n.select(&:odd?).each { |y| print "#{y}_" }
print_line
