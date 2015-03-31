count = (1..100)

count.each do |x|
	if  x.remainder(3) == 0
		puts "Bit" 
	elsif x.remainder(5) == 0
		puts "Maker"
	elsif x.remainder(15) == 0
		puts "BitMakers"
	else 
		puts "#{x}"
	end
end