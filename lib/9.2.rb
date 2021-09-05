puts "Srart."
module Greeter
  def hello
    "hello"
  end
end

begin
greeter = Greeter.new
rescue
  puts "例外が発生したが、このまま続ける"
end
puts "End."


begin
  1 / 0
rescue => e
  puts "エラークラス: #{e.class}"
  puts "エラーメッセージ: #{e.message}"
  puts "バックトレース-----"
  puts e.backtrace
  puts "-----"
end

begin
  1 / 0
rescue ZeroDivisionError
  puts "０で除算しました"
end

# begin
#   "abc".foo
# rescue ZeroDivisionError
#   puts "０で除算しました"
# end

begin
  "abc".foo
rescue ZeroDivisionError
  puts "０で除算しました"
rescue NoMethodError
  puts "存在しないメソッドが呼び出されました"
end

begin
  "abc".foo
rescue ZeroDivisionError, NoMethodError
  puts "０で除算したか、存在しないメソッドが呼び出されました"
end

begin
  "abc".foo
rescue ZeroDivisionError, NoMethodError => e
  puts "０で除算したか、存在しないメソッドが呼び出されました"
  puts "エラー： #{e.class} #{e.message}"
end

begin
  1 / 0
rescue NoMethodError
  puts "NoMethodErrorです"
rescue NameError
  puts "NameErrorです"
rescue
  puts "そのほかのエラーです"
end

retry_count = 0
begin
  puts "処理を開始します。"
   1 / 0 
 rescue
   retry_count += 1
   if retry_count <= 3
     puts "retryします(#{retry_count}回目})"
     retry
   else
     puts "retryに失敗しました"
   end
 end