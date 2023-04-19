# Recap
# Array

musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']

musicians.size                  # => 4
musicians[1]                    # => "Roger Waters"
musicians << 'Syd Barrett'      # => [..., 'Syd Barrett']

# Range
# Collection of successive elements

0..10         # including upper bound
# => 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
0...10        # excluding upper bound
# => 0, 1, 2, 3, 4, 5, 6, 7, 8, 9
(0..10).to_a  # conversion to array
# => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
