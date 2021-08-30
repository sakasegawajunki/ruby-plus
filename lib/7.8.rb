class Product 
  DEAULT_PRICE = 0
  private_constant :DEAULT_PRICE 
end

p Product::DEAULT_PRICE

class Product 
  DEAULT_PRICE = 0
  DEAULT_PRICE = 1000
end

p Product::DEAULT_PRICE