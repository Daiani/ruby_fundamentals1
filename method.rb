def tempcon

	puts "what is the temperature in F?"
	tempf= gets.chomp.to_i
	  celsius=(tempf -32) * (5.0/9).to_i

	  puts "The temperature in Celsius is #{celsius}"

	end

	tempcon
