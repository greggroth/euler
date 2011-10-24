# Find the difference between the sum of the squares of the 
# first one hundred natural numbers and the square of the sum.

sum_of_squares = (1..100).inject { |sum, el| sum + el**2 }
square_of_sum = (1..100).inject { |sum, el| sum + el }**2

puts square_of_sum - sum_of_squares