students = {
	:cohort1 => 34,
	:cohort2 => 42,
	:cohort3 => 22
}

def list(item)

	item.each do |co,num|
		puts "#{co}; #{num}"
	end
    end

    list(students)

    students[:cohort4] = 43

    puts students.keys

    students[:cohort1]

    students.each do |s,v|
    	newstudent= v* 1.05
    	puts newstudent.to_i

    end



     students.each do |s,v|
 
     	total =v+v+v+v
     	puts total

     end

 
