# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

def a(m,n,k)
  return k*(m**2-n**2)
end

def b(m,n,k)
  return k*(2*m*n)
end

def c(m,n,k)
  return k*(m**2+n**2)
end

(1..20).each do |k|
  (1..20).each do |n|
    (n+1..20).each do |m|
      puts "when #{[m,n,k]} yields a product of: #{a(m, n, k)*b(m, n, k)*c(m, n, k)}" if a(m, n, k)+b(m, n, k)+c(m, n, k) == 1000
    end
  end
end