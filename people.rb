class Person
def initialize (name)

	@name = name

end

def greeting


		puts "Hi, my name is #{@name}"

	end
end

class Student < Person
	def  learn

puts "I get it"
	end
end
 

class Instructor < Person
	def teach
		puts "Everything in Ruby is an Object"

	end

end

chris = Instructor.new("Chris")
chris.greeting

cristina = Student.new("Cristina")
cristina.greeting


chris.teach
cristina.learn

#Is not gonna work because Chris is an instructor, who teach
#Is not gonna work because Cristina is a student, who learn





 



