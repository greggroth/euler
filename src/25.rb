# What is the first term in the Fibonacci sequence to contain 1000 digits?

seq = [1, 1]
i = 1
until seq[i].to_s.split("").count == 1000
  seq << seq[i] + seq[i-1]
  i+=1
end

puts seq.count