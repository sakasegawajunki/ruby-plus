class User
end

user = User.new
user.to_s
p user.nil?

p user.class

p user.instance_of?(User)

p user.is_a?(User)
p user.is_a?(Object)
p user.is_a?(BasicObject)

class Product
end

class DVD < Product
end

class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end
product = Product.new("A great movie", 1000)
p product.name
p product.price

class DVD < Product
  attr_reader :running_time

  def initialize(name, price, running_time)
    @name = name
    @price = price
    @running_time = running_time
  end
end

dvd = DVD.new("A great movie", 1000, 120)
p dvd.name
p dvd.price
p dvd.running_time

class DVD < Product
  attr_reader :running_time

  def initialize(name, price, running_time)
    super(name, price)
    @running_time = running_time
  end
end

dvd = DVD.new("A great movie", 1000, 120)
p dvd.name
p dvd.price
p dvd.running_time

class Product
 attr_reader :name, :price

 def initialize(name, price)
   @name = name
   @price = price
 end
 
  def to_s
    "name: #{name}, price: #{price}"
  end
end

class DVD < Product
  attr_reader :running_time

  def initialize(name, price, running_time)
    super(name, price)
    @running_time = running_time
  end
  
  def to_s
    "#{super}, running_time: #{running_time}"
  end
end

product = Product.new("A great movie", 1000)
p product.to_s

dvd = DVD.new("An awesome film", 3000, 120)
p dvd.to_s