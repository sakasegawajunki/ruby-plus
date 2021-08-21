sum = 0
5.times {|n| sum += n}
p sum

a =[]
10.upto(14) {|n| a << n}
p a

a =[]
14.downto(10) {|n| a << n}
p a

a = []
1.step(10,2) {|n| a << n }
p a

a = []
while a.size < 5
  a<< 1
end
p a

a = [10,20,30,40,50]
until a.size <= 3
  a.delete_at(-1)
end
p a

numbers = [1,2,3,4]
sum = 0
for n in numbers
  sum += n
end
puts sum

numbers = [1,2,3,4,5]
loop do
  n = numbers.sample
  puts n
  break if n == 5
end

while true
  n = numbers.sample
  puts n
  break if n == 5
end