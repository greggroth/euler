module Enumerable
  def sum
    self.inject(:+)
  end
end