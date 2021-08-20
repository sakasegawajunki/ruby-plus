def default_args(a,b,c = 0, d = 0)
  "a = #{a}, b= #{b}, c= #{c}, d = #{d}"
end
puts default_args(1,2)
puts default_args(1,2,3)
puts default_args(1,2,3,4)

def foo(time = Time.now, message = bar)
  puts"time : #{time}, message : #{message}"
end
def bar
  "BAR"
end
puts foo

puts "".empty?
puts "abc".empty?

puts"watch".include?("at")
puts"watch".include?("in")

puts 1.odd?
puts 2.odd?

puts 1.even?
puts 2.even?

puts nil.nil?
puts "abc".nil?

def multiple_of_three?(n)
  n % 3 == 0
end
puts multiple_of_three?(1)
puts multiple_of_three?(2)
puts multiple_of_three?(3)

a = "ruby"
puts a.upcase
puts a

puts a.upcase!
puts a