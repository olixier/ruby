class Integer
	
	def factorial
		memo = 1
		(1..self).each { |num| memo *= num }
		memo
	end

end

def factorial(integer)
	memo = 1
	(1..integer).each { |num| memo *= num }
	memo
end

class Array
	
	def shuffle2(num)
		self.first(num).shuffle + self.drop(num)
	end

end

(1..10).each do |n|
	print "#{n}! = "
	puts n.factorial
end

print [1, 2, 3, 4, "a", "b", "c", "d"].shuffle2(4)

# If you want to call the new shuffle as the built in method, why not use method_missing? Doesn't work below but food for thoughts
# def method_missing(m, *args, &block)  
# 	if (m == "shuffle") && (args.length == 1)
# 		return self.first(args[0]).shuffle + self.drop(args[0])
# 	end
#  end  
