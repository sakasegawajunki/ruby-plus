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