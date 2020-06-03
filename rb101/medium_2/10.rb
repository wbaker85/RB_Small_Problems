def sum_square_difference(num)
  sum_squared = (1..num).reduce(:+)**2
  square_sum = (1..num).reduce(0) { |sum, num| sum + num**2 }
  sum_squared - square_sum
end


p sum_square_difference(3) == 22
# -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150