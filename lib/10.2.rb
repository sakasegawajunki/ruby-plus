def greeting
  puts "おはよう"
  if block_given?
    yield
  end
  puts "こんばんは"
end


greeting do
  puts "こんにちは"
end

greeting

def greeting
  puts "おはよう"
  text = yield "こんにちは"
  puts text
  puts "こんにちは"
end

greeting do |text|
  text * 2
end

def greeting
  puts "おはよう"
  text = yield "こんにちは",12345
  puts text
  puts "こんばんは"
end

greeting do |text|
  text * 2
end

def greeting
  puts "おはよう"
  text = yield "こんにちは"
  puts text
  puts "こんばんは"
end

greeting do |text, other|
  text * 2 + other.inspect
end

def greeting(&block)
  puts "おはよう"
  text = block.call("こんにちは")
  puts text
  puts "こんばんは"
end

greeting do |text|
  text * 2
end

def greeting(&block)
  puts "おはよう"
  text =
    if block.arity == 1
      yield "こんにちは"
    elsif block.arity == 2
      yield "こんに", "ちは"
    end

  puts text
  puts "こんばんは"
end

greeting do |text|
  text * 2
end

greeting do |text_1, text_2|
  text_1 * 2 + text_2 * 2
end