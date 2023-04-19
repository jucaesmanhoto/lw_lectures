
# Looping with for on indices

for index in 0...(musicians.size)
    musician = musicians[index]
    puts "#{index + 1} - #{musician}"
  end
  
  # => 1 - David Gilmour
  #    2 - Roger Waters
  #    3 - Richard Wright
  #    4 - Nick Mason
  
  # Looping with for on elements
  
  for musician in musicians
    puts "Listen to #{musician}"
  end
  
  # => Listen to David Gilmour
  #    Listen to Roger Waters
  #    Listen to Richard Wright
  #    Listen to Nick Mason
  
  