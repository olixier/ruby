def stupid_coaching
	puts "What do you want to tell me?"
	answer = gets.chomp

	until answer.downcase.include? "i am going to work"
		puts "I can feel your motivation son!" if answer == answer.upcase
		if answer.include? "?"
			puts "Silly question, just get dressed and go to work!"
		else
			puts "I don't care son, just get dressed and go to work!"
		end
		puts "What else?"
		answer = gets.chomp
	end

	puts "Good, hurry up son!"

end

# Calling the method
stupid_coaching