words = File.read('./lib/words.txt').split(",").map { |w| w.strip.downcase.gsub!(/^"(.*?)"$/,'\1') }

class String
  def to_number
    sum = 0
    self.downcase.each_byte { |let| sum += let - 96 }
    return sum
  end
end

triangle = Array.new
(1..20).each { |i| triangle << 0.5*i*(i+1) }

counter = 0
words.each do |word|
  counter += 1 if triangle.include?(word.to_number)
end

puts counter