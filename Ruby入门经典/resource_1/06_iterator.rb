3.times{ puts "I am Genius" }
puts("_________________")

1.upto(9){ |i| print i if i < 6 }
puts
puts("_________________")

1.upto(9) do |x|
  print x, " "
end
puts
puts("_________________")

9.downto(1){ |i| print i if i < 6 }
puts
puts("_________________")

0.step(12, 3){ |i| print i }
puts
puts("_________________")

(1..9).each{ |i| print i if i < 6 }
puts
[1, 1, 2, 3, 5].each{ |val| print val, " " }
puts

puts("_________________")
class My 
  def initialize(name, age)
    @name = name
    @age = age
  end
  
  def sayname
    puts @name
  end
  
  def sayage
    puts @age
  end
  
  def repeat(num)
    while num > 0
      yield
      num -= 1
    end
  end
  
end

m = My.new("tianen", 23)
m.repeat(3){ puts "test"}


puts("________创建过程对象________")
#
t = proc{ puts "tainen" }
t.call

puts("___________把过程对象当做参数____________")
def test(p)
  puts "start"
  p.call
  puts "end"
end
t = proc{ puts "这是一个过程对象" }
test(t)
test(proc{ puts "xiaoye" })