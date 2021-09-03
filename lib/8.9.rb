module A
  def to_s
    "<A> #{super}"
  end
end

module B
  def to_s
    "<B> #{super}"
  end
end
class Product
  def to_s
    "<Product> #{super}"
  end
end

class DVD < Product
  include A
  include B

  def to_s
    "<DVD> #{super}"
  end
end

dvd = DVD.new
p dvd.to_s
p DVD.ancestors

module Greeting
  def hello
    "hello."
  end
end

module Aisatsu
  include Greeting

  def konnitiwa
    "こんにちは"
  end
end

class User
  include Aisatsu
end

user = User.new
p user.konnitiwa
p user.hello
p User.ancestors

module StringShuffle
  refine String do
    def shuffle
      chars.shuffle.join
    end
  end
end

class User
  using StringShuffle

  def initialize(name)
    @name = name
  end

  def shuffled_name
    @name.shuffle
  end
end

user = User.new("Alice")
p user.shuffled_name

require `./string_shuffle`

using StringShuffle

puts "Alice".shuffle