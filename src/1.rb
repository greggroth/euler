# Find the sum of all the multiples of 3 or 5 below 1000.

puts (1...1000).to_a.inject(0) { |sum, el| (el%3==0 or el%5==0) ? sum + el : sum }