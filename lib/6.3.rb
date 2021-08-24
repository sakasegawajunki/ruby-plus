regex = /\d{3}-\d{4}/
puts regex.class

puts "123-4567" =~ /\d{3}-\d{4}/

if "hello" =~ /\d{3}-\d{4}/
  puts "マッチしました"
else
  puts "マッチしませんでした"
end

puts  "hello" !~ /\d{3}-\d{4}/

text = "私の誕生日は1997年7月17日です。"
m = /(\d+)年(\d+)月(\d+)日/.match(text)
p m[1]
p m[2]
p m[3]
p m[4]
p m [0]
p m[1..3]

text = "私の誕生日は1997年7月17日です。"
m = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/.match(text)
p m[:year]
p m[:month]
p m[:day]
p m[2]

text = "私の誕生日は1997年7月17日です。"
if /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/ =~ text
  puts "#{year}/#{month}/#{day}"
end

p "123 456 789".scan(/\d+/)
p "1977年"

p "1977年7月17日　2016年12月31日".scan(/(\d+)年(\d+)月(\d+)日/)
p "1977年7月17日　2016年12月31日".scan(/(?:\d+)年(?:\d+)月(?:\d+)日/)
p "1977年7月17日　2016年12月31日".scan(/\d+年\d+月\d+日/)

text = "郵便番号は123-4567です"
p text[/\d{3}-\d{4}/]

text = "123-4567 456-7890"
p text[/\d{3}-\d{4}/]

text = "私の誕生日は1997年7月17日です。"
p text[/(\d+)年(\d+)月(\d+)日/]
p text[/(\d+)年(\d+)月(\d+)日/, 2]

text = "123, 456-789"
p text.split(",")

p text.split(/,|-/)