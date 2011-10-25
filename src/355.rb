# Define Co(n) to be the maximal possible sum of a set of mutually co-prime elements from {1, 2, ..., n}.
# For example Co(10) is 30 and hits that maximum on the subset {1, 5, 7, 8, 9}.
# 
# You are given that Co(30) = 193 and Co(100) = 1356.
# 
# Find Co(200000).

def coprime?(a,b)
  a.gcd(b) == 1
end

def Co(number)
  throw_out = Array.new
  (1...number).each do |i|
    puts i
    (i+1...number).each do |n|
      if !coprime?(i, n)
        throw_out << [i, n].min unless throw_out.include?([i, n].min)
      end
    end
  end
  
  keepers = (1...number).to_a.delete_if { |i| throw_out.include?(i) }
  
  old_length = 1
  while keepers.uniq.length != old_length
    old_length = keepers.uniq.length
    number.downto(1).each do |i|
       unless keepers.map { |a| coprime?(a, i) }.include?(false)
         keepers << i
       end
     end
     puts "new length: #{keepers.uniq.length}"
  end

  return keepers.uniq.inject(0) { |sum, el| sum + el }
end

puts "Found: #{Co(200000)}"