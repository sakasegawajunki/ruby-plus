$program_name = "Awesome program"

class Program
  def initialize(name)
    $program_name = name
  end
  
  def self.name
    $program_name
  end
  
  def name
    $program_name
  end
end

p Program.name

program = Program.new("Super program")
p program.name
p Program.name
p $program_name