# map
numbers = [1,2,3,4,5]
new_numbers = []
numbers.each { |n| new_numbers << n*10}
p new_numbers

# select
numbers = [1,2,3,4,5,6]
even_numbers= numbers.select{ |n| n.even? }
p even_numbers

# reject
numbers = [1,2,3,4,5,6]
non_number_of_three = numbers.reject{|n| n%3 == 0}
p non_number_of_three

numbers = [1,2,3,4]
sum = numbers.inject(0){|result,n| result + n}
p sum

