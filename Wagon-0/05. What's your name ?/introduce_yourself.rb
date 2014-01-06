puts "First name please?"
first_name = gets.chomp
puts "Middle name please?"
mid_name = gets.chomp
puts "Family name please?"
family_name = gets.chomp

puts "Hello, #{first_name} #{mid_name} #{family_name}!"
puts "Your name is " + (first_name + " " + mid_name + " " + family_name).length.to_s + " character long!"
puts "You are a good person" unless first_name.empty? || mid_name.empty? || family_name.empty?