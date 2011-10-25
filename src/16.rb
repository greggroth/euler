# What is the sum of the digits of the number 21000?

puts (2**1000).to_s.split("").map { |a| a.to_i }.inject(0) { |sum, el| sum + el }