def greeting(country)
  if country == "japan"
    "こんにちは"
  else
    "hello"
  end
end

puts greeting("japan")
puts greeting("us")