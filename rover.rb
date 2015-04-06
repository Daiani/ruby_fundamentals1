class Rover
	def initialize(init_x, init_y, init_direction)
		
	@x = init_x
	 @y = init_y
	 @direction = init_direction

	end

	def turn_left

		if @direction == "N"
			@direction = "W"
		elsif @direction =="W"
			@direction = "S"
		elsif @direction =="S"
			@direction ="E"
		elsif @direction =="E"
			@direction = "N"


		end
	end

	def turn_right

		if @direction == "N"
			@direction = "E"
		elsif @direction == "E"
			@direction = "S"
		elsif @direction == "S"
			@direction = "W"
		elsif @direction == "W"
			@direction = "N"

		end
	end

	def read_instruction
		puts "what direction do you want go? ( left, right, foward)"
		instruction = gets.chomp

		if instruction == L 
			instruct.turn_left


	end

	end

end
			