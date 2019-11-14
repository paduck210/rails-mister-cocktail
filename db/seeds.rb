puts "Starts"

Ingredient.destroy_all
Cocktail.destroy_all
Dose.destroy_all


in_1 = Ingredient.create(name: "lemon")
in_2 = Ingredient.create(name: "ice")
in_3 = Ingredient.create(name: "mint leaves")


co_1 = Cocktail.create(name: "Lemon Tree")
co_2 = Cocktail.create(name: "Sex on the beach")
co_3 = Cocktail.create(name: "Blue Bottle")


do_1 = Dose.new(description: "5 spoons, 3 sugar")
do_2 = Dose.new(description: "10 shots, 2 pouder")
do_3 = Dose.new(description: "3 spoons, pork, noodle")


do_1.ingredient = in_1
do_2.ingredient = in_2
do_3.ingredient = in_3


do_1.cocktail = co_1
do_2.cocktail = co_2
do_3.cocktail = co_3


do_1.save
do_2.save
do_3.save

puts "Done"
