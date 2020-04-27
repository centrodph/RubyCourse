my_arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]

def printLine
    puts ""
    15.times { print "-" }
    puts ""
end 

printLine()
puts my_arr
printLine()
print my_arr
printLine()

# last element
puts my_arr.last

# create shuffle array
my_arr2 = (1..100).to_a.shuffle
print my_arr2


my_arr3 = (1..10).to_a.reverse
print my_arr3

# create reange of letters
my_letters = "a".."z"
my_letters = my_letters.to_a # mutate
print my_letters.length


printLine()

# add elments
my_arr << 33
print my_arr
printLine()

my_arr.unshift(44)
print my_arr
printLine()

# uniq
printLine()
my_arr.unshift(3)
print my_arr.uniq! # mutate
printLine()
print my_arr


# include
printLine()
print my_arr.include?(44)
printLine()

# push
printLine()
print my_arr.push(4422)
printLine()

# remove
printLine()
print my_arr.pop
printLine()
print my_arr
printLine()

# iterate
printLine()
z = %w(my name is Gerardo I am very happy learning ruby)
print z
printLine()

for i in z
    printLine()
    print i
    printLine()
end    


z.each do |item| 
    print "#{item} "
end 

# each
printLine()
z.each {|ab| print "#{ab} _ "}
printLine()


# select
printLine()
n = (1..100).to_a
puts "Odd numbers"
n.select {|x| x % 2 !== 0}.each {|y| print "#{y}_"}
printLine()
n.select {|x| x.odd?}.each {|y| print "#{y}_"}
printLine()
