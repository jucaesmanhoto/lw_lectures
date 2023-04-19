
# Block Syntax

do |num|
  num * 2
end

{ |num| num * 2 }

# Block return

musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']

upcased_first_names = musicians.map do |musician|
  first_name = musician.split.first
  upcased_first_name = first_name.upcase
  puts "[DEBUG] #{musician}'s first name is #{upcased_first_name}"

  upcased_first_name
end

# Methods using a block

method(arg_1, ...) do |block_arg_1, ...| # A block can pass on multiple arguments
    # Some code
end

method(arg_1, ...) { |block_arg_1, ...| some_code }

# Example #each
[1, 2, 3].each do |number|
    # Do what ever you want with each number
end

[1, 2, 3].each { |number| some_code }
