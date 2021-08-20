puts [].class

a = [1,2,3]
p a[0]
puts a.size
puts a.length
a[1] = 20
p a
a[4] = 50
p a
a = [1,2,3]
p a
a.delete_at(1)
p a