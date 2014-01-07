title = 'Recettes de kiffeur'

chapters = [
             ['Materiel pour cuisiner', 1],
             ['Produits de saison', 8],
             ['Sauces et soupes', 19],
             ['Viandes et Gibiers', 38],
             ['Poissons, coquillages et crustaces', 157]
           ]

# utiliser chapters.max { |x, y| (x + y).length } pour calculer width?

puts title.center(70)
puts ""
chapters.each do |x, y|
  print "Chapter #{chapters.index([x, y]) + 1} : #{x}".ljust(60)
  puts "Page #{y}".rjust(10)
end