class User
end

class OderItem
end

class User
  def initialize
    puts "Initialized."
  end
end
  puts User.new

# class User
#   def initialize(name, age)
#     puts "name: #{name}, age: #{age}"
#   end
# end
#   puts User.new("alice", 20)

# class User
#   def hello
#     "Hello!"
#   end
# end

# user = User.new
# p user.hello

class User
  def initialize(name)
    @name = name
  end

  def hello
    "Hello, I am #{@name}"
  end
end

user = User.new("Alice")
p user.hello

class User
  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def name=(value)
    @name = value
  end
end

user = User.new("Alice")
p user.name
p user.name

class User
  def initialize(name)
    @name = name
  end
  def self.create_user(names)
    names.map do |name|
      User.new(name)
    end
  end
  
  def hello
    "Hello, I am #{name}."
  end
end

names = ["Alice","Bob","Carol"]
users = User.create_user(names)
users.each do |user|
  puts user.hello
end

class Product
  DEFAULT_PRICE = 0
  attr_reader :name, :price
  
  def initialize(name, price= DEFAULT_PRICE)
    @name = name
    @price = price
    
  end
end

product = Product.new("A free movie")
p product.price
  