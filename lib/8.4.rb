class Team
  COUTRIES = deep_freeze(["Japan", "US", "India"])
end

Team::COUTRIES.frozen?
Team::COUTRIES.all?{|country| country.frozen?}

class Bank
  CURRENCIES = deep_freeze({"Japan" => "yen", "US" => "dollar", "India" => "rupee"})
end

Bank::CURRENCIES.frozen?
Bank::CURRENCIES.all?{|key, value| key.frozen? && value.frozen?}

module DeepFreezable
  def deep_freeze(array_or_hash)
  end
end

class Team
  extend DeepFreezable
  CURRENCIES = deep_freeze(["Japan", "US", "India"])
end

class Bank
  extend DeepFreezable
  
  CURRENCIES = deep_freeze({"Japan" => "yen", "US" => "dollar", "India" => "rupee"})
end