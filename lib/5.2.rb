currencies = {"japan" => "yen", "us" => "dollar","india" => "rupee"}
currencies["italy"] = "euro"
p currencies
currencies["japan"] = "円"
p currencies
p currencies["india"]
p currencies["brazil"]

currencies = {"japan" => "yen", "us" => "dollar","india" => "rupee"}
currencies.each do |key_value|
  key = key_value[0]
  value = key_value[1]
  puts "#{key}:#{value}"
end

a = {"x" => 1, "y" => 2, "z" => 3}
b = {"x" => 1, "y" => 2, "z" => 3}
c = {"x" => 1, "y" => 2, "z" => 3}
d = {"x" => 10, "y" => 2, "z" => 3}
puts a == b
puts a == c
puts a == d

{}.size
{"x" => 10, "y" => 2, "z" => 3}.size