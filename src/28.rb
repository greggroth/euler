# What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral formed in the same way?

class Integer
  def diagonal_spiral_sum
    raise(ArgumentError, "Can only generate the square for odd integers") unless self.odd?
    
    diag = [1]
    diff = 2
    
    while diff<self
      last = diag.last
      4.times do |n|
        diag << (n+1)*diff+last
      end
      diff += 2
    end
    
    return diag.inject(&:+)
  end
end

puts 1001.diagonal_spiral_sum.inspect