module Baseball
  class Second
    def initialize(player, uniform_number)
      @player = player
      @uniform_number = uniform_number
    end
  end
end

module Clock
  class Second
    def initialize(digits)
      @digits = digits
    end
  end
end

a = Baseball::Second.new("Alice", 13)
Clock::Second.new(13)


module Baseball
end

class Baseball::Second
  def initialize(player, uniform_number)
    @player = player
    @uniform_number = uniform_number
  end
end

module Clock
 class Second
   def initialize(digits)
     @digits = digits
     @baseball_second = ::Second.new("Clock", 10)
   end
 end
end