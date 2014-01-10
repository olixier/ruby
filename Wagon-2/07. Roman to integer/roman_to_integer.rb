@EQUIV = { 'I'=>1, 'V'=>5, 'X'=>10, 'L'=>50, 'C'=>100, 'D'=>500, 'M'=>1000 }

def scan(string, i, j)
	return false if string[j].nil?
	string[i..j].each_char.all? { |letter| letter == string[i] }
end

def roman_to_integer(roman_string)
	i, j, result = 0, 0, 0
	while j < roman_string.length
		if scan(roman_string, i, j)
			j += 1
		else
			result += @EQUIV[roman_string[i]] < @EQUIV[roman_string[j]] ? @EQUIV[roman_string[j]] - @EQUIV[roman_string[i]] : @EQUIV[roman_string[i]] * (j - i)
			i = j
		end
	end
	result += @EQUIV[roman_string[i]] * (j - i) if roman_string[-1] == roman_string[-2]  # Degueu mais bon ca marche
	return result
end

# testing your program
puts roman_to_integer('IV') == 4 # => true
puts roman_to_integer('XII') == 12 # => true
puts roman_to_integer('XIX') == 19 # => true
