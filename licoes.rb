#Rover

#state
#point 9x,y)
#directions

#behavior
#=> move
#=> turn left
#=> turn right


class Rover

def inicialize(init_x, init_Y, init_direction)
	@x = init_x
	@y = init_y
	@direction = init_direction

end

def move_foward
		if @direction == "N"
			@y = @y + 1

		elsif 	@direction =="E"
			@x = @x + 1

		elsif @direction == "W'"
			@y = @y - 1
		elsif	@direction == "S"
			@x = @x - 1

	elsif  @direction == "S"


end

end

def turn_right

end

def to_s
	"I am at x:#{@x}, y: #{@y}, facing: #{@direction}"

end

my_rover = Rover.new(2, 2, "N")
puts my_rover
my_rover.move_forward
puts my_rover
my_rover.turn_left
puts my_rover

end
