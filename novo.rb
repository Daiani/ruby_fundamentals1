def daiani
	bruno= 1+1
	puts "o resultado e #{bruno}"

end

daiani


def sarah(a = 1, b = 7)
	bruno= a + b
puts "testing #{bruno}"

end

sarah


class Class
	alias old_new new 
	def new(*args)
		print "Creating a new", self.name, "\n"
		old_new(*args)

	end
end

class Name
	end

	n = Name.new



	fred  =  Class.new do 
		def meth1

		puts "hello"
		end

		def meth2
		puts "bye"
		end
	end

	class Point
		def initialize(x, y)
			@x = x
			@y = y
	end

	def x=(x) 
		@x = x

	end

	def display
		"#{@x}, #{@y}"
end
end

p = Point.new(1,2)
puts p
p.x = (3)
p.x = 2







def intruction(*age)
	age.inject(0) {number = age}

end

def add(name)
	puts "#{Bryan, Sarah,}"

end

puts add_age( "The age is", 1,3)
