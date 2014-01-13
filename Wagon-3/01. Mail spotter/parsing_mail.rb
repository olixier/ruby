JOKES = {"gmail" => "you're an average but modern person", "lewagon" => "you're skilled and capable", "hotmail" => "you're lucky this is not a malware", "yahoo" => }

def parse_mail(email)  
  
  if email.match(/[\w.-]+@[\w.-]+\.com/)
  	
  	# Detect name
  	if email.match(/[\w.-]+/).to_s.match(/[\w.-]+\.[\w.-]+/)
  		first_name, last_name = email.match(/[\w.-]+/).to_s.split('.')
  	else
  		first_name = email.match(/[\w.-]+/).to_s
  		last_name = ''
  	end

  	print "Hi #{first_name.capitalize} #{last_name.capitalize}, "
  	
  	# Detect domain & puts joke
  	domain = email.match(/[\w.-]+.com/).to_s.chomp('.com')
  	puts JOKES[domain]

  else
  	puts "invalid input buddy"

	end

end

puts "Input email?"
parse_mail(gets.chomp) # => "Well done boris, you're skilled and capable"