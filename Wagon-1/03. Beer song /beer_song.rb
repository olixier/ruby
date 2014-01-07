def beersong(nb_at_start)
	count = nb_at_start.to_i
	nb_bottle = count == 1 ? "bottle" : "bottles"
	until count == "no more"
		puts "#{count} #{nb_bottle} of beer on the wall, #{count} #{nb_bottle} of beer!"
		count -= 1
		nb_bottle = count == 1 ? "bottle" : "bottles"
		count = count == 0 ? "no more" : count
		puts "Take one down, pass it around, #{count} #{nb_bottle} of beer on the wall!"
	end
puts "No more bottles of beer on the wall, no more bottles of beer!"
puts "Go to the store and buy some more, 99 bottles of beer on the wall!"
end

beersong( ARGV[0] )

# output (if called with 5 beers) :

# => 5 bottles of beer on the wall, 5 bottles of beer!
# => Take one down, pass it around, 4 bottles of beer on the wall!
# => 4 bottles of beer on the wall, 4 bottles of beer!
# => Take one down, pass it around, 3 bottles of beer on the wall!
# => 3 bottles of beer on the wall, 3 bottles of beer!
# => Take one down, pass it around, 2 bottles of beer on the wall!
# => 2 bottles of beer on the wall, 2 bottles of beer!
# => Take one down, pass it around, 1 bottle of beer on the wall!
# => 1 bottle of beer on the wall, 1 bottle of beer!
# => Take one down, pass it around, no more bottles of beer on the wall!