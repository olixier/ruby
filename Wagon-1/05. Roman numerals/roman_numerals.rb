OLD_ROMAN_BASE = ["M", "D", "C", "L", "X", "V", "I"]
OLD_ROMAN_EQUIV = [1000, 500, 100, 50, 10, 5, 1]
NEW_ROMAN_BASE = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
NEW_ROMAN_EQUIV = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]

def old_roman_numeral(an_integer)
	integer_factors = [0, 0, 0, 0, 0, 0, 0]
	result = ""
	r = 0
	for i in 0..6
		integer_factors[i] = (an_integer - r) / OLD_ROMAN_EQUIV[i]
		r += OLD_ROMAN_EQUIV[i] * integer_factors[i]
	end
	for i in 0..6
		result += OLD_ROMAN_BASE[i] * integer_factors[i]
	end
	result
end

def new_roman_numeral(an_integer)
	integer_factors = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
	result = String.new
	r = 0
	for i in 0..12
		integer_factors[i] = (an_integer - r) / NEW_ROMAN_EQUIV[i]
		r += NEW_ROMAN_EQUIV[i] * integer_factors[i]
	end
	for i in 0..12
		result += NEW_ROMAN_BASE[i] * integer_factors[i]
	end
	result
end

puts "My nice roman numeral tests" 
puts "Enter a number"
integer = gets.chomp.to_i
puts "In old roman numerals, #{integer} is written: #{old_roman_numeral(integer)}"
puts "In new roman numerals, #{integer} is written: #{new_roman_numeral(integer)}"