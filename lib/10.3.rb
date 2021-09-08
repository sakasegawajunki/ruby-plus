hello_proc = Proc.new do
  "Hello"
end
p hello_proc.call

hello_proc = Proc.new{ "Hello" }
p hello_proc.call

add_proc = Proc.new {|a, b| a + b }
p add_proc.call(10, 20)

def greeting(&block)
  puts "おはよう"
  text = block.call("こんにちは")
  puts text
  puts "こんばんは"
end
repeat_proc = Proc.new {|text| text * 2 }
p greeting(&repeat_proc)


def greeting(proc_1, proc_2, proc_3)
  puts proc_1.call("おはよう")
  puts proc_2.call("こんにちは")
  puts proc_3.call("こんばんは")
end

shuffle_proc = Proc.new {|text| text.chars.shuffle.join}
repeat_proc = Proc.new {|text| text * 2 }
question_proc = Proc.new {|text| "#{text}?"}
greeting(shuffle_proc, repeat_proc, question_proc)

add_proc = Proc.new{|a, b| a + b}
p add_proc.call(10, 20)
add_lambda = ->(a, b) {a + b }
p add_lambda.call(10, 20)
