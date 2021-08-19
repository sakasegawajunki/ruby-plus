def greeting(country)
  country or return "countryを入力してください。"

  if country == "japan"
    "こんにちは！"
  else
    "hello"
  end
end
puts greeting(nil)
puts greeting("japan")

country = "italy"
if country == "japan"
  puts"こんにちは"
elsif country == "us"
  puts"Hello"
elsif country == "italy"
  puts"ciao"
else
  puts"???"
end

case country
when "japan"
  puts "こんにちは"
when "us"
  puts "Hello"  
when "italy"
  puts "ciao"
else
  puts "???"
end

# 三項演算子
n = 11
if n > 10
  puts "10より大きい"
else
  puts "10以下"
end

n = 11
puts n > 10? "10より大きい":"10以下"
