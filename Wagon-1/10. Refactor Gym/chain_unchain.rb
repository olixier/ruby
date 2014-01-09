def shuffle_word(a_word)
  # Ruby fonction to play to "Des chiffres et des lettres.."
  array = a_word.upcase.chars.to_a
  shuffle_array = array.shuffle
end


def factors(i)
	(2..i-1).select {|k| i % k == 0 }
end

def quote_prime_numbers(n)
  primes = (1..n).find_all { |i| factors(i).count == 0 }
	primes.map { |prime_num| "#{prime_num} is prime" }
end

puts shuffle_word("nabuchodonosor")
puts quote_prime_numbers(30)