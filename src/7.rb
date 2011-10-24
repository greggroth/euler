# What is the 10,001st prime number?

require 'prime'

counter = 0

Prime.each(1000000) do |p|
  counter += 1
  if counter == 10001
    puts "The #{counter}th prime number is #{p}"
    exit
  end
end

puts "The limit must not be high enought to find a result.  Stopped at #{counter}."