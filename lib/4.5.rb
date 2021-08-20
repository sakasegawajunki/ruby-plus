range = 1..5
puts range.include?(0)
puts range.include?(5)

range = 1...5
puts range.include?(0)
puts range.include?(5)

puts (1..5).include?(3)

a = [1,2,3,4,5]
p a[1..3]

def liquid?(temperture)
  0 <= temperture &&temperture <100
end
puts liquid?(-1)
puts liquid?(0)

def liquid?(temperture)
  (0...100).include?(temperture)
end
puts liquid?(100)

# case
def charge(age)
  case age
  
  when 0..5
    0
  when 6..12
    300
  when 13..18
    600
  else
    1000
  end
end

puts charge(2)
puts charge(6)
puts charge(13)
puts charge(20)

numbers = (1..4).to_a
sum = 0
numbers.each {|n| sum += n}
p sum

numbers = []
(1..10).step(2) {|n| numbers << n }
p numbers