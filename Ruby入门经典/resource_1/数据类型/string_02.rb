# string方法中尾部带有!的方法会直接修改字符串的内容
puts("___________*符号_____________")
a = "tianen"
a = a * 3
puts a


puts("___________[]符号_____________")
puts a[0]
puts a[1]
puts a[-1]
puts a[6]
puts a[0].chr
puts a[-1].chr
puts a[-6].chr
puts a[5].chr
puts a[0, 2]
puts a[-1, 3]

puts "___________next, nextZ!, succ, succ!_______"
p "aa".succ
p "99".succ
p "a9".succ
p "Az".succ
p "zz".succ
p "-9".succ
p "9".succ
p "09".succ

puts "-------------substr符号--------------"

a = "tianen"
puts a["an"]
puts a["na"]

p "---------[regexp] 和 [regexp, nth] 符号 ---------"
# 返回自护与regexp相匹配的子字符串, 与匹配相关的信息被存储在内部变量$~中, 若与regexp匹配失败, 返回nil
puts a[/an/]
puts $~.begin(0)

p "-----------length size------------"
p a.length
p a.size
p "太嫩".length
p "天恩".size

p "---------[first..last]-------"
p a
p a[2..4]
p a[2..5]
p a[2..6]
p a[-2..5]

p "---------[first...last]-------"
p a[2..4]
p a[2...4]

p "------------[nth] = val-----------"
puts a
p a[2]
p a[2] = "tttt"
p a
a = "tianen"
p a[2] = "k"
p a

p "------------[nth, len] = val-----------"
a = "tianen"
p a
p a[2]
p a[2, 4] = "jj"
p a

p "------------[substr] = val-----------"
a = "tianen"
puts a 
puts a["an"]
puts a["an"] = "ppppp"
puts a

p "-----------[regex] = val / [regex, nth] = val--------------"
a = "tianen tianen"
p a
p a[/an/]
p a[/an/, 0] = "ppp"
p a
a = "tianen tianen"
p a
a[/an/] = "ppp"
p a

p "-------- [first..last]=val , [first...last]=val-------------"
a = "tianen tianen"
p a[2..5]
p a[2..5] = "AAAAAA"
p a
a = "tianen tianen"
p a[2...5]
p a[2...5] = "AAAAAA"
p a

p "--------caplitalize capitalize!-----"
a = "tianen"
puts a
puts a.capitalize
p a
p a.capitalize!
p a 
a = "t 天恩"
p a.capitalize

p "-----------格式化-------------"
a = "tianen"
p a.center(16)
p a.ljust(16)
p a.rjust(16)
p a.center(16, "*%")
p a.ljust(16, "*")
p a.rjust(16, "*")


p "--------chomp([rs]) chomp!([rs])"
p "tianen \n".chomp
p "tianen \n\r".chomp
p "tianen \n\r".chomp[" "]
p "tianen \r".chomp

p"------------ chop 和 chop!"
p "tianen \n".chop
p "tianen \n\r".chop
p "tianen \r\n".chop
p "tianen \r".chomp


p "--------count(str[, str2[,..]])"
p 'abcdefgc'.count('c')
p '1234567890'.count('2378')
p '1234567890'.count('2-8')
p '1234567890'.count('^4-6')
p '1234567890'.count('4-6', '2-8')

p'-------delete insert'
p "123456789".delete("2-8")
p "123456789".delete("^4-6")
p "123456789".delete("2-8", "^4-6")
p "123456789".delete('2378')
str = "foobaz"
p str.insert(3, "bar")


p "-------- downcase downcase!"
p "ABCDsef 天".downcase

p "--------dump"
puts "abc\r\n\f\x00\b10\\\"".dump


p "---------迭代器"
# "aaaadbbbdcccccd".each("d"){ |line| p line }
p "_____"
p "a".empty?
p "".empty?


p "----------正则替换和替代"
p 'abcabc'.gsub(/b/, '(\&)')
p 'abcabc'.gsub(/b/){ |s| s.upcase }
p 'abcabc'.gsub(/b/){ $&.upcase }
p 'abcdefg'.gsub(/cd/, 'CD')
str = 'abcdef'
str.gsub!(/cd/, 'CD')
p str
p 'abbcd'.gsub(/a(b+)/, "\\1")
p 'abbcd'.gsub(/a(b+)/, '\1')
p 'abbcd'.gsub(/a(b+)/, '\\1')
p 'abbcd'.gsub(/a(b+)/){ $1 }

p "---------- hex oct"
p "10".hex
p "ff".hex
p '10'.oct

p "----------- include?"
p "what the fuck".include?("fuck")
p "what the fuck".include?("name")

p "----------- index, rindex"
p "sdfghjklkjhgfds".index("fgh")
p "character".index(?c)
p "character".rindex(?c)
p "foobar".index("bar")
p "foobar".index("bar", 2)
p "foobar".rindex("bar", 2)

p "------------scan"
p "foobar".scan(/./)
p "foobarbazfoobarbaz".scan(/ba./)
p "foobar".scan(/(.)/)

p "------------slice"
p "foobar".slice(0, 2)
p "foobar"[0..2]

p "---------------split"
p "   a\t     b\n    c".split(/\s+/)
p "   a\t     b\n    c".split
p "   a\t     b\n    c".split()
p "aaaabaaabaaa".split('b')
p "abc".split(//)

p "-------"
p "a,b,c,,,".split(/,/)
p "a,b,c,,,".split(/,/, 0)
p "a,b,c,,,".split(/,/, 3)
p "a,b,c,,,".split(/,/, 6)
p "a,b,c,,,".split(/,/, -1)
p "a,b,c,,,".split(/,/, 100)

p "--------squeeze"
p "112233445566778899".squeeze
p "112233445566778899".squeeze("2-8")
p "112233445566778899".squeeze("2-8", "^4-6")
p "112233445566778899".squeeze("2378")
p "what     the      fuck".squeeze(" ")

p "-------strip strip!"
p "    abc   \r\n".strip
p "abc\n".strip
p "abc".strip
p "a  bc     ".strip

p "-------------rstrip"
p "    abc   \r\n".rstrip
p "abc\n".rstrip
p "abc".rstrip
p "a  bc     ".rstrip

p "ABCD 天 deF".swapcase

p "foo".tr('a-z', 'A-Z')
p "FOO".tr('A-Z', 'a-z')

p "----------tr_s"
p "foo".tr_s('a-z', 'A-Z')
p "FOO".tr_s('A-Z', 'a-z')