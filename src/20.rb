# Find the sum of the digits in the number 100!

puts 100.downto(1).inject(:*).to_s.split("").inject(0) { |sum,el| sum += el.to_i }