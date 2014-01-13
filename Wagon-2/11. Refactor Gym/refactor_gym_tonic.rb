# Very dirty code to make some dirty gym...
def hop_hop_hop(number_of_exercises)
  (1..number_of_exercises).each do |i|
    i.times { print "hop! " }
    print 'Encore une fois..' + "\n"
  end  
end

hop_hop_hop(6)
