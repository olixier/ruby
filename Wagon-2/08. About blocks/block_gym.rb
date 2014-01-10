# Recoding inject iterator

def inject(array, initial_value)
	sum = initial_value
	a = 0
	array.each { |x| sum += yield(a, x) }
	sum
end

puts inject(1..100, 0) { |initial_value, element| element + initial_value } == 5050 # true

# Block timer

def timer_for
	start = Time.now
	yield
	puts Time.now - start
end

timer_for do 
  (1..100).each { |i| (1..100000).to_a.shuffle.sort }
end

# Should return around 2-3 seconds