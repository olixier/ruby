def louchebem_word(word)
	word.split('').each_with_index do |letter, index|
		if %w(a e i o u).include? letter
			return "l" + word[index..-1] + word[0..index-1] + %w(em oc ic uche es).shuffle[0]
		end
	end
end

def louchebem(sentence)
	translated = []
	result = ""
	sentence.split(/\b/).each do |word|
		result += (word =~ /\W/).nil? ? louchebem_word(word) : word
	end
	result
end

puts "Type in a French word"
word = gets.chomp
puts louchebem(word)


# ma version moche de louchebem_word ci-dessous (il y a une erreur de classe à la fin)

# def louchebem_word(word)
# 	suffixes = ["em", "ji", "oc", "ic", "uche", "es"] 
# 	chars = word.downcase.chars.chunk { |x| "aeiouy".include? x }.to_a
# 	print chars
# 	return "Le mot n'est pas louchebem-isable" if chars[0][0] == true || chars[0][1] == ["l"]
# 	chars << chars[0]
# 	chars[0][1] == ["l"]
# 	chars << [nil, suffixes[rand(suffixes.length)]]
# 	result = chars.flatten(3).reject { |x| x.is_a?(Trueclass) }.to_s
# end