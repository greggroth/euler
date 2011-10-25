# What is the largest prime factor of the number 600851475143 ?

require 'prime'

factors = Array.new
Prime.each(7000) { |p| factors << p if 600851475143%p == 0 }

puts factors.max