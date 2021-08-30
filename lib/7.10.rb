s = "Hello"
p s.length
p s.size

class User
  def hello
    "Hello"
  end

  alias greeting hello
end

user = User.new
p user.hello
p user.greeting


class User
  class BlooType
    attr_reader :type

    def initialize(type)
      @type = type
    end
  end
end

blood_type = User::BlooType.new("B")
p blood_type.type

class User
  def name=(value)
    @name = value
  end
end

user = User.new
p user.name = "Alice"

class Product
  attr_reader :code, :name

  def initialize(code, name)
    @code = code
    @name = name
  end

  def ==(other)
    if other.is_a?(Product)
      code == other.code
    else
      false
    end
  end
end

a = Product.new("A-001", "A great movie")
b = Product.new("B-001", "An awesome film")
c = Product.new("A-001", "A great movie")
p a == b
p a == c

h = {1 => "Integer", 1.0 => "Float"}
p h[1]
p h[1.0]

a = "japan"
b = "japan"
p a.eql?(b)
p a.hash
p b.hash

c = 1
d = 1.0
p c.eql?(d)
p c.hash
p d.hash

value = [1, 2, 3]
case value
when String
  puts "文字列です"
when Array
  puts "配列です"
when Hash
  puts "ハッシュです"
end

class MyString < String
end
s = MyString.new("Hello")
p s
p s.class

class MyArray < Array
end
  a =MyArray.new()

  a << 1
  a << 2
  p a

class String
  def shuffle
    chars.shuffle.join
  end
end

s = "Hello, I am Alice"
p s.shuffle
p s.shuffle

class User
  def initialize(name)
    @name = name
  end

  def hello
    "Hello, #{@name}!"
  end
end

class User
  alias hello_original hello

def hello
  "#{hello_original}じゃなくて、#{@name}さん、こんにちは！"
end
end
user = User.new("Alice")
p user.hello

alice = "I am Alice."
bob = "I am Bob."

def alice.shuffle
  chars.shuffle.join
end

p alice.shuffle
p bob.shuffle

# def display_name(object)
#   puts "Name is <<#{object.name}>>"
# end

# class User
#   def name
#   "Alice"
#   end
# end

# class Product
#   def name
#     "A great movie"
#   end
# end

# user = User.new
# p display_name(user)
# product = Product.new
# p display_name(product)


class Product
  def initialize(name, price)
    @name = name
    @price = price
  end

  def display_text
    stock = stock? ? 'あり' : 'なし'
    "商品名： #{@name} 価格： #{@price}円 在庫： #{stock}"
  end
end

class DVD < Product
  def stock?
    true
  end
end

product = Product.new("A great film", 1000)
product.display_text
dvd = DVD.new("An awesome film", 3000)
dvd.display_text