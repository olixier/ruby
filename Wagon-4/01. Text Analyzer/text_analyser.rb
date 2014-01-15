line_count = 0
text = []

File.open('oliver.txt', "r").each do |line| 
	line_count += 1
	text << line
end

puts "*"*40
puts "Nb of lines: " + line_count.to_s

char_count = text.join.length
puts "Nb of characters: " + char_count.to_s
char_nospace_count = text.join.gsub(/\s/, '').length
puts "Nb of characters without space: " + char_nospace_count.to_s

words = []
text.each { |line| words << line.split(/\s/) }
word_count = words.flatten.length
puts "Nb of words: " + word_count.to_s

print words.flatten.select { |word| word =~ /[\.\!\?]/ }
sentence_count = words.flatten.select { |word| word =~ /[\.\!\?]/ }.length
puts "Nb of sentences: " + sentence_count.to_s

paragraph_count = text.join.split(/\n{2}/).length
puts "Nb of paragraphs: " + paragraph_count.to_s

puts "Average nb words per sentence: " + (word_count / sentence_count).to_s
puts "Average nb sentences per paragraph: " + (sentence_count / paragraph_count).to_s
puts "*"*40