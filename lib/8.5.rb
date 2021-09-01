module Loggable
end

class Product
  include Loggable
end

p Product.include?(Loggable)
p Product.included_modules
p Product.ancestors

product = Product.new
p product.class.include?(Loggable)
p product.class.included_modules

product = Product.new
p product.is_a?(Product)
p product.is_a?(Loggable)
p product.is_a?(Object)

module Taggable
  def price_tag
    "#{price}円"
  end
end

class Product
  include Taggable
  def price
    1000
  end
end

product = Product.new
p product.price

p Array.include?(Enumerable)
p Hash.include?(Enumerable)
p Range.include?(Enumerable)

p [1,2,3].map{|n| n * 10}
{ a: 1, b: 2, c: 3 }.map { |k, v| [k, v * 10 ] }
p (1..3).map { |n| n * 10}
p [1,2,3].count
p (1..3).count

p 2 <=> 1
p 2 <=> 2
p 1 <=> 2
p 2 <=> "abc"

class Tempo
  include Comparable
  attr_reader :bpm
  
  def initialize(bpm)
    @bpm = bpm
  end
  
  def  <=>(other)
    if other.is_a?(Tempo)
      bpm <=> other.bpm
    else
      nil
    end
  end    
  def inspect
    "#{bpm}bpm"
  end
end
    
p t_120 = Tempo.new(120)
p t_180 = Tempo.new(180)

p t_120 > t_180
p t_120 <= t_180
p t_120 == t_180

tempos = [Tempo.new(180), Tempo.new(120), Tempo.new(60)]
p tempos.sort