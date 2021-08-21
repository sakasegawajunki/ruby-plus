a = [1,2,3,4,5]
p a[1,4]
p a.values_at(0,2,4)
puts a[a.size - 1]
p a.last(2)
p a.first(2)

a = []
p a.push(1)
p a.push(2,3)

a = [1,2,3,4,5,6]
a.delete(1)
p a

a = [1]
b = [2,3]
a.concat(b)
p a

a = [1]
b = [2,3]
a + b
p a
p b

a = [1,2,3]
b = [3,4,5]
# p a|b
# p a - b
p a & b

e,f = 100,200,300
p e
p f

e,*f = 100,200,300
p e
p f

a = []
a.push(1)
a.push(2,3)
p a

a = []
b = [2,3]
a.push(1)
a.push(b)
p a

a = []
b = [2,3]
a.push(1)
a.push(*b)
p a

def greeting(*names)
  "#{names.join("と")}、こんにちは！"
end
puts greeting("田中さん")
puts greeting("田中さん","鈴木さん")

a =[1,2,3]
p [a]
p [*a]

a =[1, 2, 3]
[-1, 0]+a+[4, 5]
p a

p %w! apople mlkon orange!
p %w(apople melon orange)

a = Array.new
p a

a = Array.new(5)
p a

a = Array.new(5,0)
p a