begin
  puts "Hello."
rescue
  puts "例外が発生しました。"
else
  puts "例外は発生しませんでした。"
end

ret =
  begin
    "OK"
  rescue
    "error"
  ensure
    "ensure"
  end
p ret

ret =
  begin
    1 / 0
    "OK"
  rescue
    "error"
  ensure
    "ensure"
  end
p ret

def some_method(n)
  begin
    1 / n
    "OK"
  rescue
    "error"
  ensure
    "ensure"
  end
end

p some_method(1)
p some_method(0)


p 1 / 1 rescue 0
p 1 / 0 rescue 0

def to_date(string)
  Date.parse(string) rescue nil
end

p to_date('2021-09-07')
p to_date("abcdef")

def fizz_buzz(n)
    if n % 15 == 0
      "Fizz Buzz"
    elsif n % 3 == 0  
      "Fizz"
    elsif n % 5 == 0
      "Buzz"
    else
      n.to_s
    end
  rescue => e
    puts "#{e.class} #{e.message}"
end
fizz_buzz(nil)

class NoCountryError < StandardError
  attr_reader :country

  def initialize(message, country)
    @country = country
    super("#{message} #{country}")
  end 
end
def currency_of(country)
  case country
  when :japan
    "yen"
  when :us
    "dollar"
  when :india
    "rupee"
  else
    raise NoCountryError.new("無名な国名です。", country)
  end
end

begin 
  currency_of(:italy)
rescue NoCountryError => e
  puts e.message
  puts e.country
end