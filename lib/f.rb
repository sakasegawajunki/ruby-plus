#   numbers = [1, 2 , 3 , 4]
#   sum = 0
#   numbers.each do |n|
#     sum += n
#   end

# puts kasan(sum)
class SimpleClass
  def display
  puts "合計値は#{kasan(numbers)}です。"
  end

end

 def kasan(numbers)
   sum = 0
   numbers.each do |n|
     if n >= 0
       sum += n
     else
       sum
     end
   end
   sum
 end


 numbers = [1, 2 , 3 , 4, -1]
 puts kasan(numbers)



class SimpleClass

  def kasan(numbers)
    sum = 0
    numbers.each do |n|
      if n >= 0
        sum += n
      else
        sum
      end
    end
    sum
  end

  def display(sum)
    puts "合計値は#{sum}です。"
  end

end


 def display(sum)
    puts "合計値は#{sum}です。"
 end

 puts display(10)

a = [1,2,-1,2,3]
b = SimpleClass.new
p b.kasan(a)

display(kasan(a))
