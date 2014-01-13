def group_mails(emails) 
	output = Hash.new { |hash, key| hash[key] = [] }
	emails.each { |email| output[domain_scan(email)] << email } 
	output
end

def domain_scan(email)
	email.match(/[\@\b][\w-]+[\.\b]/).to_s[1...-1]
end


users_emails = %w( bob@yahoo.fr 
                   roger57@hotmail.fr 
                   bigbox@yahoo.fr 
                   boris@lewagon.org 
                   monsieur.olivier@gmail.com 
                   monsieur.mack@gmail.com )
                   
puts group_mails( users_emails ) 

# => {"yahoo" => ["bob@yahoo.fr", "bigbox@yahoo.fr"], 
#     "hotmail" => ["roger57@hotmail.fr"], 
#     "lewagon" => ["boris@lewagon.org"], 
#     "gmail" => ["monsieur.olivier@gmail.com", 
#     "monsieur.mack@gmail.com"]}
