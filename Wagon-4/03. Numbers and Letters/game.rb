require 'open-uri'
require 'json'

def random_letters(n)
	result = []
	n.times { result << ('A'..'Z').to_a[rand(26)]}
	result
end

def test_word?(letters, word)
	begin
		test = letters.dup
		word.each_char { |letter| test.delete_at(test.index(letter)) }
		letters.length == test.length + word.length
	rescue
		return false
	end
end

def translate(word)
	begin
		h = JSON.parse(open("http://api.wordreference.com/affd4/json/enfr/" + word).read)
		h["term0"]["PrincipalTranslations"]["0"]["FirstTranslation"]["term"]
	rescue
		return 'nothing!'
	end
end

def points(word, translation)
	translation == 'nothing!' ? 0 : word.length
end

def run_game
	puts "\n********Welcome to the longest word-game !!********"
	puts "Here is your grid:"
	letters = random_letters(9)
	letters.each { |l| print l + " " }

	puts "\n***************************************************"
	start = Time.now
	
	while true
		puts "What is your best shot?"
		answer = gets.chomp.upcase
		if test_word?(letters, answer)
			break
		else
			puts "This is not a valid answer, try again!"
			next
		end
	end

	final = Time.now
	translation = translate(answer)

	puts "****************************************************"
	puts "You took #{(final - start).round(2)} seconds to answer!"
	puts "Your word '#{answer}' means: #{translation}"
	puts "#{points(answer, translation)} points!"
end

run_game
