# How many different ways can £2 be made using any number of coins?
# 1,2,5,10,20,50,100,200

# class Array
#   def clip(n=1)
#     take size - n
#   end
# end

coins = [1,2,5,10,20,50,100,200]

count = 0
coins[7].step(0, -coins[7]) do |a|
	a.step(0, -coins[6]) do |b|
		b.step(0, -coins[5]) do |c|
			c.step(0, -coins[4]) do |d|
				d.step(0, -coins[3]) do |e|
					e.step(0, -coins[2]) do |f|
						f.step(0, -coins[1]) do
							count += 1
						end
					end
				end
			end
		end
	end
end
puts count