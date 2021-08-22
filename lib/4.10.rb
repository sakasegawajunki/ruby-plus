numbers = [1,2,3,4,5].shuffle
numbers.each do |n|
  puts n
  break if n == 5
end

numbers = [1,2,3,4,5].shuffle
i = 0
while i < numbers.size
  n = numbers[i]
  puts n
  break if n == 5
  i += 1
end

fruits = ["apple", "melon", "orange"]
numbers = [1, 2, 3]
fruits.each do |fruit|
  numbers.shuffle.each do |n|
    p "#{fruit}", "#{n}"
    break if n == 3
  end
end

fruits = ["apple", "melon", "orange"]
numbers = [1,2,3]
catch :done do
  fruits.shuffle.each do |fruit|
    numbers.shuffle.each do |n|
      puts "#{fruit}","#{n}"
      if fruit =="orange" && n == 3
        throw :done
      end
    end
  end
end

numbers = [1,2,3,4,5]
numbers.each do |n|
  next if n.even?
  puts n
end

numbers =[1,2,3,4,5]
i = 0
while i < numbers.size
  n = numbers[i]
  i += 1
  next if n.even?
  puts n
end


foods = ["ピーマン","トマト","セロリ"]
count = 0
foods.each do |food|
  print  "#{food}は好きですか？ =>"
  answer = ["いいえ"]
  puts answer
  count += 1
  redo if answer != "はい" && count < 2
  
  count = 0
end
