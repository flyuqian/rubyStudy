# 打印
puts "Hello world"

# 练习
puts "I will now count my chickens"
puts "Hens", 25 + 30 / 6
puts "Now I will count the eggs:"
puts 3 + 2 + 1 - 5 + 4 % 2- 1 / 4 + 6
puts "Is it true that 3 + 2 < 5 - 7 ?"
puts 3 + 2 < 5 - 7
puts "What is 3 + 2 ?", 3 + 2
puts "What is 5 - 7 ?", 5 - 7
puts "Oh, that`s is why it`s false."
puts "How about some more"
puts "Is it greater?", 5 > -2
puts "Is it greater or equal?", 5 >= 2
puts "Is it less or equal", 5 <= 2

# 变量和命名
# 变量声明 不需要类型和关键字, 字符串中使用#{}插入变量
cars = 100
space_in_a_car = 4.0
drivers = 30
passengers = 90
cars_not_driven = cars - drivers
car_driven = drivers
carpool_capacity = car_driven * space_in_a_car
average_passengers_per_car = passengers / car_driven
puts "There are #{cars} car avaliable."

# 格式化输出
my_name = "Zed A. Shaw"
my_age = 35
my_height = 74
my_weight = 180
my_eyes = 'Blue'
my_teeh = "white"
my_hair = "Brown"

puts "let`s talk about %s" % my_name
puts "He`s %d inches tall." % my_height
puts "He`s got %s eyes and %s hair." % [my_eyes, my_hair]
puts "If I add %d, %d, and %d I get %d." % [my_age, my_height, my_weight, my_age + my_height + my_weight]

# 字符串
x = "There are #{10} types of people"
binary = 'binary'
do_not = 'don`t'
y = "Those who know #{binary} and those are who #{do_not}"
puts x 
puts y

hilarious = false
joke_evaluation = "Isnt that joke so funny?! #{hilarious}"
puts joke_evaluation

# 印出, 印出
formatter = "%s %s %s %s"
puts formatter % [1, 2, 3, 4]
puts formatter % ["one", 'two', 'three', 'four']
puts formatter % [false, true, true, false]
puts formatter % [formatter, formatter, formatter, formatter]
puts formatter % [
  "I",
  "That you cold tyoe",
  "But it didnt sing",
  "so  i said goodnight"
]

# 印出, 印出, 印出
days = 'Mon Tue wed thu fri sat sun'
monts = "Jan\nFeb\nMar\nApr\nMay"
puts "Here are the days: ", days
puts "Here are the months: ", monts
puts <<PARAGRAPH
There's something going on here.
With the three double-quotes.
We'll be able to type as much as we like.
Even 4 lines if we want, or 5, or 6.
PARAGRAPH

# \ 的使用
tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split\non a line"
backeslash_cat = "I'm \\ a \\ cat"
fat_cat = <<MY_HEREDOC
I'll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
MY_HEREDOC
puts tabby_cat
puts persian_cat
puts backeslash_cat
puts fat_cat

#print he puts, puts会自动换行, print 不会
#下面TM运行报错, 可用终端
print "How old are you ?"
age = gets.chomp()
print "How tall are you ?"
height = gets.chomp()
print "How much do you weight?"
weight = gets.chomp()
puts "so, you're #{age} old, #{height} tall and #{weight} heavy."