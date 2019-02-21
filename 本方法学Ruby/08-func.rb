def puts_two(*args)
  arg1, arg2 = args
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

def puts_two_agin(arg1, arg2)
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

def puts_one(arg1) 
  puts "arg1 #{arg1}"
end

def puts_once()
  puts "I got nothin."
end

puts_two("Zed", "小明")
puts_two_agin("铁蛋", false)
puts_one("钩子")
puts_once()
puts
puts;puts

# 另一个练习
def cheese_and_crackers(cheese_count, boxes_of_crackers)
  puts "You have #{cheese_count} cheese"
  puts "You have #{boxes_of_crackers} boxes of crackers!"
  puts "Man thats enough fora  party!"
  puts "Get a blanet"
  puts
end

puts "We can just give the function numbers directly:"
cheese_and_crackers(20, 30)
amount_of_cheese = 10
amount_of_crackes = 50
cheese_and_crackers(amount_of_cheese, amount_of_crackes)

puts "We can even do math inside too:"
cheese_and_crackers(10 + 20, 5 + 6)

puts "And we can combine the two, variables and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackes + 1000)