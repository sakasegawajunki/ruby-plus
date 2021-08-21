fruits = ["apple", "orange","melon"]
fruits.each_with_index {|fruits,i| puts "#{i}: #{fruits}"}

fruits = ["apple", "orange","melon"]
fruits.map.with_index {|fruit,i| p "#{i}: #{fruit}"}

dimensions = [
  [10, 20],
  [30, 40],
  [50, 60],
]
areas = []
dimensions.each do |dimensions|
  length = dimensions[0]
  width = dimensions[1]
  areas << length * width
end
p areas

dimensions.each do |length, width, foo, bar|
  p [length, width, foo]
end
dimensions = [
  [10,20],
  [30,40],
  [50,60],
]
dimensions.each_with_index do |(length, width), i|
  puts "length: #{length}, width: #{width}, i:#{i}"
end

numbers = [1,2,3,5]
sum = 0
numbers.each do |n; sum|
  sum = 10
  sum += n
  p sum
end

names = ["田中","鈴木", "佐藤"]
san_names = names.map{|name| "#{name}さん"}
puts san_names.join("と")

names = ["田中","鈴木", "佐藤"]
puts san_names = names.map{|name| "#{name}さん"}.join("と")

names = ["田中","鈴木", "佐藤"]
names.map do |name|
puts  "#{name}さん"
end.join("と")
