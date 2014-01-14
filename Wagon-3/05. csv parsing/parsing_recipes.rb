require 'csv'

difficulty = {"1"=>"Easy", "2"=>"Medium", "3"=>"Hard"}

# This method converts the csv to a hash of arrays
def csv_to_hash(file)
	hash = Hash.new { |hash, key| hash[key] = [] }
	CSV.foreach(file) do |row|
	hash[row[0]] = row[1..-1]
	end
	hash
end

# This will return an array of all the available option for a particular index
def summary(hash, index)
	output = []
	hash.each_key { |key| output << hash[key][index] unless output.include?(hash[key][index]) }
	output
end

# This will return all the keys for which the value of this index == criteria
def find_keys(hash, criteria, index)
	output = []
	hash.each_key { |key| output << key if hash[key][index].downcase == criteria.downcase }
	output
end

recipes = csv_to_hash('recipes.csv')

puts "We have recipes for:"
puts summary(recipes, 0)

while true
	puts "\nWhich category are you interested in?"
	category = gets.chomp
	if find_keys(recipes, category, 0).empty?
		puts "Your input is incorrect, please try again!"
		next
	else
		break
	end
end

puts "\nHere are the recipes of the category: #{category}"
puts find_keys(recipes, category, 0)

while true
	puts "\nNow which recipe?"
	choice = gets.chomp
	choice = recipes.keys.find { |x| x.downcase == choice.downcase } # in order to disregard the case
	if recipes.has_key?(choice)
		break
	else
		puts "Your input is incorrect, please try again!"
		next
	end
end

puts "\n" + choice
puts "*"*40
puts "Difficulty: #{difficulty[recipes[choice][3]]}"
puts "Preparation: #{recipes[choice][1]} min"
puts "Cooking: #{recipes[choice][2]} min"
puts "*"*40