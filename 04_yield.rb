
def timer
    start_time = Time.now
    yield
    puts "Elapsed time: #{Time.now - start_time}s"
end

timer() do
  puts "I'm doing something slow..."
  sleep(4)
  puts "I'm done :)"
end
# => I'm doing somethings slow...
# => I'm done :)
# => Elapsed time: 4s

def greet(first_name, last_name)
  full_name = "#{first_name.capitalize} #{last_name.upcase}"
  return "Hello, #{full_name}"
end

puts greet('john', 'lennon') # "Hello, John LENNON"

def beautify_name(first_name, last_name)
  full_name = "#{first_name.capitalize} #{last_name.upcase}"
  yield(full_name)
end
message = beautify_name("john", "lennon") do |name|
  "Greetings #{name}, you look quite fine today!"
end
puts message # => "Greetings John LENNON, you look quite fine today!"
message = beautify_name("john", "lennon") do |name|
  "Bonjour #{name}, comment allez-vous ?"
end
puts message # => "Bonjour John LENNON, comment allez-vous ?"
message = beautify_name("ringo", "starr") do |name|
  "Hey #{name}! Let's play on your #{name} drum kit!"
end
puts message # => "Hey Ringo STARR! Let's play on your Ringo STARR drum kit!"