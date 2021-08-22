currencies = { japan: "yen", us: "dollar", india: "rupee"}
p currencies.keys
p currencies.values
p currencies.has_key?(:japan)
p currencies.has_key?(:china)

h = { us: "dollar", india: "rupee"}
# p { japan: "yen", **h }
{japan: "yen"}.merge(h)

def buy_burger(menu, options = {})
  puts options
end

buy_burger "fish", "drink" => true, "potato" => false

currencies = {jpan: "yen", us: "dollar", india: "rupee"}
p currencies.to_a

array = [[:japan, "yen"], [:us, "dollar"], [:india, "rupee"]]
p array.to_h

h = Hash.new("hello")
p a =h [:foo]
p b = h[:bar]
p a.equal?(b)
a.upcase!
p a
p b

p h