def not_mcnuggets(finish)
	not_nuggets = []
	(1..finish).select do |num|
		test = false
		limit_six = num / 6
		limit_nine = num / 9
		limit_twenty = num / 20
		for i in 0..limit_twenty 
			break if test == true
			for j in 0..limit_nine
				break if test == true
				for k in 0..limit_six
					break if test == true
					sum = i * 20 + j * 9 + k * 6
					test = sum == num ? true : false
				end
			end
		end
		not_nuggets << num if test == false
	end
end

# def not_nuggets2(finish)
# 	(1..finish).each_with_object([]) do |num, a|
# 		test = false
# 		limit_six = num / 6
# 		limit_nine = num / 9
# 		limit_twenty = num / 20
# 		for i in 0..limit_twenty 
# 			break if test == true
# 			for j in 0..limit_nine
# 				break if test == true
# 				for k in 0..limit_six
# 					break if test == true
# 					sum = i * 20 + j * 9 + k * 6
# 					test = sum == num ? true : false
# 				end
# 			end
# 		end
# 		a << if test == false
# 	end
# end	
# end

puts "Until what number do you want to get the not McNuggets numbers?"
print not_mcnuggets(gets.chomp.to_i)

