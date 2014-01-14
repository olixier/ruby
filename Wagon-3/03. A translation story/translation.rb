$strings = {
 home: {
   intro: {
     en: 'Welcome on Le Wagon',
     fr: 'Bienvenue sur Le Wagon'
   },
   content: {
     explanation: {
       en: 'This is an interesting exercise',
       fr: 'C\'est un exercice interessant',
       de: 'Es ist eine interesante Abung'
     },
     goodbye: {
       en: 'Goodbye',
       fr: 'Au revoir',
       es: 'Adios'
     }
   }
 }
}

def getTranslation(a_string, a_language = :en)
  rest = a_string
  hash = $strings
  (a_string.count('.') + 1).times do
    lookup, rest = rest.split('.', 2)
    return '' if hash[lookup.to_sym].nil?
    hash = hash[lookup.to_sym]
  end
  return hash[a_language.to_sym].nil? ? hash[:en] : hash[a_language.to_sym]
end

# testing your program 

puts getTranslation('home.intro', 'fr') == 'Bienvenue sur Le Wagon' # => true
puts getTranslation('home.intro', 'es') == 'Welcome on Le Wagon' # => true
puts getTranslation('home.content.goodbye') == 'Goodbye' # => true
puts getTranslation('unvalid.path','en') == '' # => true