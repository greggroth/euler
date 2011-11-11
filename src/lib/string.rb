class String
  def encrypt(key)
    full_key = key.split(",").cycle(self.split(",").length/key.split(",").length+1).to_a
    msg = Array.new
    self.split(",").zip(full_key) { |k| msg << (k[0].to_i^k[1].to_i) }
    return msg.join(",")
  end
  
  def ascii_list_to_letters
    self.split(",").map { |a| a.to_i.chr }.join
  end
  
  alias :decrypt :encrypt
end