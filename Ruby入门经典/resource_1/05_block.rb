


def test_block
  puts "Start"
  yield
  yield
  puts "end"
end
test_block { puts "test block" }

test_block do
  puts "test block 1"
  puts "test block 2"
end
# 如果某个方法含有yield语句, 并且关联了block, 那么执行到 yield语句的时候金辉将其所关联的块进行调用


def test_block_2
  puts "Start"
  yield(1, 3)
  yield(8, 9)
  puts "end"
end
test_block_2{ |a, b| puts a+b }