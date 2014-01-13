# Recoding inject iterator

def inject(array, initial_value)
	array.each { |x| initial_value = yield(initial_value, x) }
	initial_value
end

puts inject(1..100, 0) { |initial_value, element| element + initial_value } == 5050 # true
puts inject(1..5, 1) { |initial_value, element| element * initial_value } == 120 # true



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