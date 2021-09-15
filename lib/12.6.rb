code = "[1, 2, 3].map {|n| n * 10}"
p eval(code)

# puts `cat lib/Fizz_Buzz.rb`

str = "a, b, c"
p str.send("upcase")

p str.send("split", ",")