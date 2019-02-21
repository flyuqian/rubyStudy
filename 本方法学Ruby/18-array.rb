
the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quariters']

for number in the_count
  puts "This is count #{number}"
end

fruits.each do |fruit|
  puts "A fruit of type: #{fruit}"
end


for i in change
  puts "I got #{i}"
end

elements = []
for i in (0..5)
  puts "Adding #{i} to the list"
  elements.push(i)
end

for i in elements
  puts "elemnet wars: #{i}"
end


i = 0
numbers = []
while i < 6
  puts "At the top is is #{i}"
  numbers.push(i)
  i = i + 1
  puts "Numbers now: #{numbers}"
  puts "At the bottom i is #{i}"
end

puts "The numbers: "
for num in numbers
  puts num
end
