
# Ingredient.destroy_all
# Cocktail.destroy_all
# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
# Ingredient.create(name: "orange")
# Ingredient.create(name: "strawberry")

# Cocktail.create(name: "Gin Tonic")
# Cocktail.create(name: "Pina Colada")
# Cocktail.create(name: "Wiskey Sour")

# puts "#{Ingredient.count} ingredients created"
# puts "#{Cocktail.count} cocktail created"


# json
# 1. use open URI and json
# 2. open the link
# 3. loop through the whole data with each
# 4. for every item in the hash create an ingredient.create


require 'json'
require 'open-uri'

Ingredient.destroy_all

result = JSON.parse(open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read)
drinks = result['drinks']

drinks.each do |hash|
  hash.each do |k, v|
    Ingredient.create(name: v)
  end
end
