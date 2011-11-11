class Array
  def most_common
    self.group_by { |e| e }.values.max_by(&:size).first
  end
end