class Fixnum
  def factors
    return (1...self).to_a.keep_if { |x| self%x == 0 }
  end
end