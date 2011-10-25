# By considering the terms in the Fibonacci sequence whose values do not 
# exceed four million, find the sum of the even-valued terms.

seq = [1, 1]
i = 1
while seq[i] < 4000000
  seq << seq[i] + seq[i-1]
  i+=1
end

puts seq.keep_if { |el| el.even? }.inject(0) { |sum, el| sum + el }