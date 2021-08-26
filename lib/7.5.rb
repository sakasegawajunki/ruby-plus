class User
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def hello
    "Hello, I am #{name}."
  end
  
  def hi
    "Hi, I am #{self.name}."
  end

  def my_name
    "My name is #{@name}."
  end
end

user = User.new("Alice")
p user.hello
p user.hi
p user.my_name

class Foo
    puts "クラス構文の直下のself :#{self}" 
    
  def self.bar
    puts "クラスメソッドないのself: #{self}"
  end
  def baz
    puts "インスタンスメソッド内のself: #{self}"
  end
end
p Foo.bar
foo = Foo.new
p foo.baz

class Foo
   3.times do
    puts "Hello!"
  end
end

class Product
  attr_accessor :name, :price
  
  def initialize(name, price)
    @name = name
    @price = price
  end
  
  def self.format_price(price)
    "#{price}円"
  end
  
  def to_s
    formatted_price = Product.format_price(price)
    "name: #{name}, price: #{formatted_price}"
  end
end 

product = Product.new("A great movie", 1000)
p product.to_s