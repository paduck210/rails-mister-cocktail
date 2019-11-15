require 'open-uri'
require 'json'


puts "Destroy All"
Dose.delete_all
Cocktail.delete_all
Ingredient.delete_all

puts "Cocktail Starts"
co_1 = Cocktail.create(name: "Lemon Tree")
co_2 = Cocktail.create(name: "Sex on the beach")
co_3 = Cocktail.create(name: "Blue Bottle")

puts "Does Starts"
do_1 = Dose.new(description: "5 spoons, 3 sugar")
do_2 = Dose.new(description: "10 shots, 2 pouder")
do_3 = Dose.new(description: "3 spoons, pork, noodle")

puts "Ingredient Starts"
url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
json = open(url).read
obj = JSON.parse(json)
data = []

obj["drinks"].each do |d|
  object = { name: d["strIngredient1"] }
  data << object
end

data = data[0..9]


Ingredient.create!(data)
puts "Done"
