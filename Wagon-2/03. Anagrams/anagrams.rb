def anagrams?( a_string, another_string )
	a_string.downcase.chars.to_a.reject { |x| x == " " }.sort == another_string.downcase.chars.to_a.reject { |x| x == " " }.sort
end

def anagrams_on_steroids?( a_string, another_string )
	h = Hash.new(0)
	a_string.downcase.chars.reject { |x| x == " " }.each { |letter| h[letter] += 1 }
	another_string.downcase.chars.reject { |x| x == " " }.each { |letter| h[letter] -= 1 }
	h.values.all? { |x| x == 0 }
end

# complexity = O(n*log(n))
puts anagrams? "Monica Lewinsky", "Nice silky woman" # => true 

# complexity = ? O(n)
puts anagrams_on_steroids? "Monica Lewinsky", "Nice silky woman" # => true