def calories_in(burger, side, beverage)
	food = [ "Cheese Burger", "Big Mac", "Mc Bacon", "Royal Cheese", "French fries", "Potatoes", "Coca", "Filet-of-Fish" ]
	calories = [ 300, 550, 460, 520, 500, 130, 140, 300 ]
	calories[food.index(burger)] + calories[food.index(side)] + calories[food.index(beverage)]
end

def calories_in2(burger, side, beverage)
	food = { "Cheese Burger" => 290, "Big Mac" => 300, "Mc Bacon" => 400, "Royal Cheese" => 130, "French fries" => 130, "Potatoes" => 130, "Coca" => 160, "Filet-of-Fish" => 300 }
	food[burger] + food[side] + food[beverage]
end

def calories_in3(*meal)
	meal = meal[0] if meal[0].is_a?(Array) and meal.length == 1 # This is in case we have an array of array with the recursion

	conversion_hash = {
		"Cheese Burger" => 290, 
		"Big Mac" => 300, 
		"Mc Bacon" => 400, 
		"Royal Cheese" => 130, 
		"French fries" => 130, 
		"Potatoes" => 130, 
		"Coca" => 160, 
		"Filet-of-Fish" => 300,
		"Happy Meal" => ["Cheese Burger", "French fries", "Coca"]
	}

		calories = 0

		meal.each do |ingredient|
			value = conversion_hash(ingredient)
			if value.is_a?(Array)
				calories += calories_in3(value) # recursive method if values is an array = combo of ingredients
			else
				calories += value
			end
		end

		return calories

	end



puts "Burger?"
burger = gets.chomp
puts "Side?"
side = gets.chomp
puts "Beverage?"
beverage = gets.chomp

puts calories_in(burger, side, beverage)
puts calories_in2(burger, side, beverage)

puts "And the calories for the Happy Meal is"
puts calories_in3("Happy Meal")

puts "Congrats, you're fat!"

# if we need hashes to define meals
# burger = { best_of_big_mac: "Big Mac"}
# side = { best_of_big_mac: "French fries"}
# beverage = { best_of_big_mac: "Coca"}
# puts calories_in2(burger(:best_of_big_mac), side(:best_of_big_mac), beverage(:best_of_big_mac))