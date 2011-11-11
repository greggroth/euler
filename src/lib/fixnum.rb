class Fixnum
  def factors
    (1...self).to_a.keep_if { |x| self%x == 0 }
  end
end