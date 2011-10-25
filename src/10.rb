# Find the sum of all the primes below two million.

require "prime"

total = 0
Prime.each(2000000) { |num| total += num }

puts total