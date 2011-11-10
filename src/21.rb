require "./lib/fixnum"
require "./lib/enumerable"

def amicable?(a, b)
  return false if a == b
  (a.factors.sum == b) and (b.factors.sum == a)
end

puts (1..1000).to_a.combination(2).to_a.keep_if { |com| amicable?(com[0], com[1]) }