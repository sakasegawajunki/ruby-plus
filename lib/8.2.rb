module Greeter
  def hello
    "hello"
  end
end

greeter = Greeter.new
module AwesomeGreeter < Greeter
end
