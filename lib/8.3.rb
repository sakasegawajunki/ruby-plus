class Product
  def title
    log "title is called."
    "A great movie"
  end
  
  private
  
  def log(text)
    puts "[LOG] #{text}"
  end
end

class User
  def name
    log "name is called."
    "Alice"
  end
  
  private
  
  def log(text)
    puts "[LOG] #{text}"
  end
end

product = Product.new
p product.title

user = User.new
p user.name


module Loggable
  private
  
  def log(text)
    puts "[LOG] #{text}"
  end
end

class Product
  include Loggable
  
  def title
    log "A great movie."
    "A great movie"
  end
end

class User
  include Loggable
  
  def name
    log 'name is called.'
    "Alice"
  end
end 

product = Product.new
p product.title

user = User.new
p user.name


module Loggable
 def log(text)
   puts "[LOG] #{text}"
 end
end

class Product
  extend Loggable
  
  def self.create_products(names)
    log "create_products is called."
  end
end

p Product.create_products([])
p Product.log("Hello.")
