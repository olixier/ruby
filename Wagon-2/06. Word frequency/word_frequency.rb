def stopwords(word)
	list = "a,able,about,across,after,all,almost,also,am,among,an,and,any,are,as,at,be,because,been,but,by,can,cannot,could,dear,did,do,does,either,else,ever,every,for,from,get,got,had,has,have,he,her,hers,him,his,how,however,i,if,in,into,is,it,its,just,least,let,like,likely,may,me,might,most,must,my,neither,no,nor,not,of,off,often,on,only,or,other,our,own,rather,said,say,says,she,should,since,so,some,than,that,the,their,them,then,there,these,they,this,tis,to,too,twas,us,wants,was,we,were,what,when,where,which,while,who,whom,why,will,with,would,yet,you,your"
	list.split(',').include? word
end

def most_common_words(file_name, num)
	count = Hash.new(0)
	text = []
	File.open(file_name, "r").each { |line| text << line.chomp.downcase.split(/\W/) }
	text = text.flatten(4)
	text.each { |word| count[word] += 1 }
	result = count.to_a.sort { |x, y| y[1] <=> x[1] }
	result = result.reject { |x| stopwords(x[0]) }
	result.delete_if { |x| x[0] == "" }
	for i in 0..num 
		puts result[i][0] + ": #{result[i][1]} occurrences"
	end
end

most_common_words('source-text.txt', 3)