def input_students (students_array)
	while true
		puts "New student?"
		new_student = gets.chomp
		break if new_student.empty?
		students_array << new_student
	end
end

def wagon_sort( students_array )
	students_array.sort { |a, b| a.downcase <=> b.downcase }
end

students_array = Array.new
input_students(students_array)
puts "Congratulation! Your Wagon has #{students_array.count} students:"
wagon_sort(students_array).each { |name| puts name }