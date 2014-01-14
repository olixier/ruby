def palindrome?(a_string)
	a_string.reverse.downcase.gsub(/\W+/,'') == a_string.downcase.gsub(/\W+/,'')
end

  
# Testing palindrome? function
puts "#{palindrome?("A man, a plan, a canal -- Panama")}" #=> true
puts "#{palindrome?("Madam, I'm Adam!")}" # => true
puts "#{palindrome?("Abracadabra")}" # => false