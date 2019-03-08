module My
  NA = "China"
  
  def My.set_name(name)
    @name = name
  end
  def My.get_name
    return @name
  end
  
  def My.set_age(age)
    @age = age
  end
  
end


My.set_name("tianen")
p My.get_name
p My::NA


# 模块引入
module Your
  NA = "AC"
  
  attr:name
  def Your.set_name(name)
    My.set_name(name)
  end
  def Your.get_name
    return My.get_name
  end
  
  def Your.set_age(age)
    @age = age
  end
  def Your.get_age
    return @age
  end
  
end

Your.set_name("lucy")
p Your.get_name
Your.set_age("22")
p Your.get_age
p Your::NA