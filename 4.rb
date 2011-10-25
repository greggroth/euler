# Find the largest palindrome made from the product of two 3-digit numbers.

max = 0
(100..999).to_a.reverse.each do |i|
  (100..999).to_a.reverse.each do |j|
    max = (i*j) if (i*j).to_s.reverse == (i*j).to_s and (i*j) > max
  end
end

puts max