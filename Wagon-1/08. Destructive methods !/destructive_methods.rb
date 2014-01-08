# Find an example which illustrates the difference between chosen_method and chosen_method!
# Copy / Paste this example here !

def disparition(array, word)
	array.reject { |a| a == word }
end

def disparition!(array, word)
	array.reject! { |a| a == word }
end

puts "Type in your text"
static_array = gets.chomp.split(" ")
array = static_array.map(&:downcase)
puts "Which word do you want to delete?"
word = gets.chomp.downcase
puts "Do you want to use the 'Bang' method? (Y/N)"
ans = gets.chomp.downcase

puts "This is the corrected text:"
puts ans == "y" ? disparition!(array, word).join(" ") : disparition(array, word).join(" ") 
puts "And the original text was:"
puts static_array.join(" ")