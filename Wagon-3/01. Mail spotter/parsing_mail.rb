JOKES = {"gmail" => "you're an average but modern person", "lewagon" => "you're skilled and capable", "hotmail" => "you're lucky this is not a malware", "yahoo" => "I hope you're enjoying all this purple", "aol" => "this is not 1997 anymore..."}

def parse_mail(email)  
  
  if email.match(/[\w.-]+@[\w.-]+\.com/)

  	res = email.split(/\.|@/).to_a

  	# Detect name & domain, alternative below
  	if res.size == 4
  		first_name, last_name, domain = res
  	else
  		first_name, domain = res[0..res.index('com') - 2].join(' '), res[res.index('com') - 1]
  		last_name = ''
  	end

  	print "Hi #{first_name.capitalize} #{last_name.capitalize}, "
   	puts JOKES[domain]

  else
  	puts "invalid input buddy"

	end

end

puts "Input email?"
parse_mail(gets.chomp) # => "Well done boris, you're skilled and capable"

  	
  	# Alternative method below to assign names and domain
  	# if email.match(/[\w.-]+/).to_s.match(/[\w.-]+\.[\w.-]+/)
  	# 	first_name, last_name = email.match(/[\w.-]+/).to_s.split('.')
  	# else
  	# 	first_name = email.match(/[\w.-]+/).to_s
  	# 	last_name = ''
  	# end
  	# domain = email.match(/[\w.-]+.com/).to_s.chomp('.com')