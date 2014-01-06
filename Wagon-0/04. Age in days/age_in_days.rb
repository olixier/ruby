def age_in_days(day, month, year)
	t = Time.new(year, month, day)
	diff = ((Time.now - t) / (60 * 60 * 24)).truncate
	"You have #{diff} days buddy!"
end

# Testing your code
puts age_in_days(7, 12, 1986)