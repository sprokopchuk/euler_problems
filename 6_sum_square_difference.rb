def sum_square_difference nums = 1..100
  sum_squares = 1
  squares = nums.map {|x| x*x}
  sum_squares = squares.reduce(:+)
  square_sum = (nums.reduce(:+))**2
  difference = square_sum - sum_squares
end
p sum_square_difference
