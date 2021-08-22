currencies = {:japan => "yen", :us => "dollar", :india => "rupee"}
p currencies[:us]
hash = {"abc" =>123, def: 456}
p hash["abc"]
p hash[:def]
p hash[:abc]

person = {
  name: "Alice",
  age:20,
  frineds:["Bob", "Carol"],
  phones: {home:"1234-0000",mobile:"5678-0000"}
}
p person
p person[:name]
p person[:age]
p person[:phones][:mobile]

def buy_burger(menu, drink: true, potato: true)
end