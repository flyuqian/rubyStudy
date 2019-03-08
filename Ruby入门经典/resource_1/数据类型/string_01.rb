# ruby 的字符串是简单的8位字节序列, 他们通常保存可打印字符序列, 也可以保存二进制数据, 
# 可以使用 #{表达式} 把任何表达式插入字符串, 如果表达式是全局变量/类变量/实例变量, 可以省略大括号
a = "my age : #{11 + 11}"
b = "line no. #$."
puts a
puts b

# 使用%q, %Q 构建字符串
x = %q(i am yut ain en)
y = %Q{waht the fuck}
z = %Q/这样也行/
h = %q[
zi fuchan
字符串
打印
]
puts x
puts y
puts z
puts h

