numbers = [1,2,3,4]
sum = 0
numbers.each do |n|
  sum += n
end
puts sum

a= [1,2,3,1,2,3,4]
a.delete_if do |n|
  n.odd?
end
p a

numbers = [1,2,3,4]
sum = 0
numbers.each do |n|
  sum_value = n.even?? n*10:n
  sum += sum_value
end
puts sum

numbers = [1,2,3,4]
sum = 0
numbers.each do |n| sum += n end
puts sum