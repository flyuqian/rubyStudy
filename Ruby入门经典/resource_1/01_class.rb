# ruby中, Object是所有类的父类

class Man
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
end

class Tianen < Man
  def sayHi
    puts "Hi"
  end
  def sayname
    super
    puts "这就是我的名字"
  end
end

t = Tianen.new("天恩", 22)
t.sayname
t.sayage
t.sayHi

puts("___________分割线____________")
# ruby是弱类型语言, 只有重写,没有重载
a = Man.new("a", 6)
b = Man.new("b", 7)
def b.sayname
  puts "bbbbb"
end
a.sayname
a.sayage
b.sayname
b.sayage

puts("___________分割线____________")
# 只有方法, 没有函数, 如果方法不属于自定义类,其属于Object
=begin 
错误
def my
  puts "my love!"
end
my
s = "good"
s.my
=end

=begin
三个限制方法的关键字
public  可以为任何对象所存取的方法(默认)
protected 可在其实例与子类实例中调用
private 只可在这个方法所处的对象中调用, 不可以这届调用另一个对象的private方法, 包括调用自身也不允许
=end

class Man2
  def initialize(name, age)
    @name = name
    @age = age
  end
  private
  def sayname
    puts @name
  end

  def sayage
    puts @age
  end

  public
  def free
    puts "i am public"
    sayname
  end
end
t1 = Man2.new("太嫩", 8)
t1.free
# private method ‘sayage’ called for #<Man2:0x00007f8c5e25a408 @name="太嫩", @age=8>
# t1.sayage
# t1.sayname

class Man3
  def initialize(name, age)
    @name = name
    @age = age
    @sex = "man"
  end
  # 限定属性的读写
  # 只读
  def get_name
    return @name
  end
  # 只写
  def set_age(age)
    @age = age
  end
  # 读写
  def get_sex
    return @sex
  end
  def set_sex(sex)
    @sex = sex
  end

  def sayname
    puts @name
  end

  def sayage
    puts @age
  end

end

# 另一种限定属性读写方式
class Man4
  def initialize(name, age)
    @name = name
    @age = age
    @sex = "man"
  end
  # 限定属性的读写
  # 只读
  attr_reader :name
  attr_writer :age
  attr_accessor :sex
  def name
    return @name
  end
  # 只写
  def age=(age)
    @age = age
  end
  # 读写
  def sex
    return @sex
  end
  def sex=(sex)
    @sex = sex
  end

  def sayname
    puts @name
  end

  def sayage
    puts @age
  end

end