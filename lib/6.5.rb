text = "03-1234-5678"

case text
when /^\d{3}-\d{4}$/
  puts "郵便番号です"
when /^\d{4}\/\d{1,2}\/\d{1,2}$/
  puts "日付です"
when /^\d+-\d+-\d+$/
  puts "電話番号です"
end

text = "私の誕生日は1977年7月17日です"

text =~ /(\d+)年(\d+)月(\d+)日/

p $~
p $&
p $1
p $2
p $3
p $+

p Regexp.last_match
p Regexp.last_match(0)
p Regexp.last_match(1)