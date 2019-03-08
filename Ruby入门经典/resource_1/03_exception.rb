# ruby 使用 begin resecue end 来处理异常
s = 1
begin
  s = 1 / 0
  puts s
rescue
  puts "error!"
  # retry 重新执行begin中的内容
  # 会导致程序不断被执行
  # retry
  
end

# 异常抛出

# begin
#   raise "test"
# rescue
#   puts "error! " + $!
# end


# ensure 类似Java中的finally
begin
  s = 1/0
rescue
  puts "error! "
ensure
  puts "finished!"
end

puts"__________"
begin
  s=1
ensure
  puts "finished!"
end
puts"__________"
# 这里异常未处理, 运行会直接报错
begin 
  s = 1/0
ensure
  puts "finished"
end
