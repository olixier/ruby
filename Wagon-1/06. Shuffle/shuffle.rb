def shuffle(array)
	@old = array.dup
	@randomized = []
	
	until @old.empty?
		n = rand(@old.length)
		@randomized << @old[n]
		@old.delete_at(n)
	end
	@randomized
end

def shuffle2(array)
	array.sort_by { |x| rand }
end

sorted_array = (1..10).to_a

print shuffle(sorted_array)
puts
print shuffle2(sorted_array)
puts