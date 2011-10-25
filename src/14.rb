# n -> n/2 (n is even)
# n -> 3n + 1 (n is odd)
# 
# Which starting number, under one million, produces the longest chain?

max = Array.new
(1..1000000).each do |i|
  seq = [i]
  while seq.last != 1
    seq.last.even? ? (seq << seq.last/2) : (seq << seq.last * 3 + 1)
  end
  max = seq if (seq.length > max.length)
end

puts "there were #{max.length} steps when I started with #{max.first}"