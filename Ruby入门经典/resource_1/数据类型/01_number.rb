# ruby 支持整形和浮点型两种数据类型
=begin
Numeric 这是所有数字类型的基类
FLoat 
Integer, (整形可以是任意长度, 一定范围内为 Fixnum, 超过范围自动转换为 Bignum)
=end

puts 12345.class
puts 123454678234567564321.class

puts 123456
puts 123_345
puts -12
puts 123_345_567_890
puts 0xaab
puts 036
puts -0b101_01

puts "______________"
# 通过一个ASCII字符或者一个转义字符前加?, 得到它的数字值, 
puts ?\a
puts ?\n
puts ?\t
puts ?\C-x
puts ?\M-\C-x
puts "______________"

i = 23
f = -33.53
puts "i:", i
puts "f:", f
puts "i.to_f:", i.to_f
puts "f.to_i:", f.to_i
puts "f.ceil:", f.ceil
puts "f.floor:", f.floor
puts "f.round:", f.round
p Math::PI
p Math::E
puts "_____还有好多方法...__"
