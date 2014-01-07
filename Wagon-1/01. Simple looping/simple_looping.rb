# The objective is to create a function that computes the sum of the integers from a min value to a max value

def sum(min, max)
	res = 0
	for n in min..max
		res += n
	end
	res
end

def sum2(min, max)
	res = 0
	n = min
	while n <= max
		res += n
		n += 1
	end
	res
end

def sum3(min, max)
	(max * (max + 1) - min * (min - 1)) / 2
end


# Testing your code

puts "Min?"
min = gets.to_i
puts "Max?"
max = gets.to_i

puts "The 'for' method gives #{sum(min, max)}"
puts "The 'while' method gives #{sum2(min, max)}"
puts "The recursive method gives #{sum3(min, max)}"