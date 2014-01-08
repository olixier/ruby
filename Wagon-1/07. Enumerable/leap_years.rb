def leap_years(gap)
	gap.select { |n| ((n % 4 == 0) && (n % 100 != 0)) || (n % 400 == 0) }
end

puts "Start year?"
start = gets.chomp.to_i
puts "End year?"
finish = gets.chomp.to_i
puts leap_years((start..finish).to_a)