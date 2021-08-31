class Team
  COUNTRIES = ["Japan", "US", "India"].freeze
end

class Team
  COUNTRIES = ["Japan".freeze, "US".freeze, "India".freeze].freeze
end

class Team
  COUNTRIES = deep_freeze(["Japan", "US", "India"])
end

p Team::COUNTRIES.frozen?
p Team::COUNTRIES.all?{|country| country.frozen?}

class Bank
  CURRENCIES = deep_freeze({"japan" => "yen", "US" => "dollar", "India" => "rupee"})
end

p Bank::CURRENCIES.frozen?