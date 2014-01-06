def age_in_days(day, month, year)
	t = Time.new(year, month, day)
	((Time.now - t) / (60 * 60 * 24)).truncate
end

# Testing your code
puts age_in_days(7, 12, 1986)