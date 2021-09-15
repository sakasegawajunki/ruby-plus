File.exists?("./secret.txt")

Dir.exists?("./secret_folder")

# File.open("./lib/FizzBuzz.rb", "r") do |f|
#   puts f.readlines.count
# end

# File.open("./lib/hello_world.txt", "w") do |f|
#   f.puts "Hello, world!"
# end

require "pathname"
lib = Pathname.new("./lib")
p lib.file?
p lib.directory?