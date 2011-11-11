coded_message = File.read('./lib/cipher1.txt').split(",")

require "./lib/array.rb"
require "./lib/string.rb"

# I want an array for each letter in the keypass
number_of_chars_in_key = 3

split = Hash.new { |hash, key| hash[key] = Array.new }
coded_message.each_index do |i|
  number_of_chars_in_key.times { |n| split[n.to_s.to_sym] << coded_message[i] if i%number_of_chars_in_key == n }
end

# I'm guessing that the most common character is a space
spaces = Hash.new
split.each_pair { |k,v| spaces[k] = v.most_common.to_i ^ 32 }

key = spaces.values.flatten.join(",")
decrypted_text = coded_message.join(',').decrypt(key)
total = coded_message.join(',').decrypt(key).split(",").map(&:to_i).inject(&:+)

# See if it works
puts "found key:  #{key.ascii_list_to_letters}"
puts "text: #{decrypted_text.ascii_list_to_letters.split(',').join}"
puts "ascii total:  #{total}"