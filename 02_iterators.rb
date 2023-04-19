
#each

musicians.each do |musician|
    puts "Hello #{musician}!"
end
  
# => Hello David Gilmour!
#    Hello Roger Waters!
#    Hello Richard Wright!
#    Hello Nick Mason!

#each_with_index
musicians.each_with_index do |musician, index|
  puts "#{index + 1} - #{musician}"
end

# => 1 - David Gilmour
#    2 - Roger Waters
#    3 - Richard Wright
#    4 - Nick Mason

# map

musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']

upcased_musicians = musicians.map do |musician|
  musician.upcase
end

p upcased_musicians
# => ['DAVID GILMOUR', 'ROGER WATERS', 'RICHARD WRIGHT', 'NICK MASON']

musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']

musician_first_names = musicians.map do |musician|
  musician.split.first
end

p musician_first_names
# => ['David', 'Roger', 'Richard', 'Nick']

# count
musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']

r_musicians_count = musicians.count do |musician|
  musician.start_with?("R")
end

p r_musicians_count
# => 2

#select

musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']

r_musicians = musicians.select do |musician|
  musician.start_with?("R")
end

p r_musicians
# => ['Roger Waters', 'Richard Wright']

# Understand what they return

# .each     -> the object it was called on (!)
# .map      -> a new Array with transformed elements
# .count    -> an Integer
# .select   -> a new Array with elements that met a condition

# Understand how they work

musicians.each   { |musician| any_code_with(musician) }
musicians.map    { |musician| transform(musician)     }
musicians.select { |musician| condition_on(musician)  }

# What the hell was this?
do |musician|
  musician.upcase
end