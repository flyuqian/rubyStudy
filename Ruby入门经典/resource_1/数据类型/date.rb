p "======Time"

t = Time.new
p Time.now

now = Time.new
i = now.to_i
p i
now = Time.at(i)
p now

t= Time.now
a = t.strftime("%a")
c = t.strftime("%c")
ac = t.strftime("%a%c")

p a
p c
p ac

p t.sec
p t.mon
p t.day
p t.mday


p "--------to_...-----"
p Time.now.to_f
p Time.now.to_i
p Time.now.to_s
p Time.now.usec
p Time.now.tv_usec



p "===========Date"
# p Date.parse('6/24/2007').to_s
(Date.new(2007, 5, 1)..(Date.new(2007, 6, 1))).each{ |x| puts x } 