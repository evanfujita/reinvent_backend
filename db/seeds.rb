User.destroy_all
Category.destroy_all
Ingredient.destroy_all
Vendor.destroy_all 
# Dish.destroy_all
# Station.destroy_all


User.create(first_name: 'Evan', last_name: 'Fujita', username: 'evan', password: 'aaa', password_confirmation: 'aaa', restaurant_name: 'fujiya')

Vendor.create(name: 'GFS')
Vendor.create(name: 'Local Farms')
Vendor.create(name: 'Linz Meats')
Vendor.create(name: 'Seafood Merchants')

# Station.create(name: 'GM', user_id: 1)
# Station.create(name: 'Grill', user_id: 1)
# Station.create(name: 'Fish', user_id: 1)
# Station.create(name: 'Meat', user_id: 1)

Category.create(name: 'Protein', user_id: 1)
Category.create(name: 'Produce', user_id: 1)
Category.create(name: 'Dairy', user_id: 1)
Category.create(name: 'Dry Goods', user_id: 1)

# Dish.create(name: 'Summer Salad', station_id: 1)
# Dish.create(name: 'Beef Tartare', station_id: 1)
# Dish.create(name: 'Carrot Salad', station_id: 1)
# Dish.create(name: 'Octopus', station_id: 2)
# Dish.create(name: 'Short Rib', station_id: 2)
# Dish.create(name: 'Halibut', station_id: 3)
# Dish.create(name: 'Salmon', station_id: 3)
# Dish.create(name: 'Ribeye', station_id: 4)
# Dish.create(name: 'Duck', station_id: 4)

# Component.create(name: 'Chopped Radicchio', quantity: 2, quantity_unit: 'Cup', dish_id: 1, par: 30)
# Component.create(name: 'Sliced Fennel', quantity: 2, quantity_unit: 'Cup', dish_id: 1, par: 30)
# Component.create(name: 'Diced Apple', quantity: 1, quantity_unit: 'Cup', dish_id: 1, par: 10)
# Component.create(name: 'Summer Dressing', quantity: 2, quantity_unit: 'Cup', dish_id: 1, par: 30)

# Component.create(name: 'Diced Dry-Aged Beef', quantity: 50, quantity_unit: 'gram', dish_id: 2, par: 400)
# Component.create(name: 'Toasted Brioche', quantity: 2, quantity_unit: 'ea', dish_id: 2, par: 30)
# Component.create(name: 'Sunchoke Chips', quantity: 24, quantity_unit: 'gram', dish_id: 2, par: 300)
# Component.create(name: 'Garlic Aioli', quantity: 15, quantity_unit: 'gram', dish_id: 2, par: 100)

# DishComponent.create(dish_id: 1, component_id: 1, quantity: 2, quantity_unit: 'gram')
# DishComponent.create(dish_id: 1, component_id: 2, quantity: 8, quantity_unit: 'gram')
# DishComponent.create(dish_id: 1, component_id: 3, quantity: 4, quantity_unit: 'gram')
# DishComponent.create(dish_id: 1, component_id: 4, quantity: 9, quantity_unit: 'gram')

# DishComponent.create(dish_id: 2, component_id: 5, quantity: 9, quantity_unit: 'gram')
# DishComponent.create(dish_id: 2, component_id: 6, quantity: 43, quantity_unit: 'gram')
# DishComponent.create(dish_id: 2, component_id: 7, quantity: 80, quantity_unit: 'gram')
# DishComponent.create(dish_id: 2, component_id: 8, quantity: 12, quantity_unit: 'gram')

# ComponentIngredient.create(component_id: 1, ingredient_id: 7)
# ComponentIngredient.create(component_id: 2, ingredient_id: 8)
# ComponentIngredient.create(component_id: 3, ingredient_id: 10)
# ComponentIngredient.create(component_id: 4, ingredient_id: 12)
# ComponentIngredient.create(component_id: 4, ingredient_id: 13)

# ComponentIngredient.create(component_id: 5, ingredient_id: 5)
# ComponentIngredient.create(component_id: 6, ingredient_id: 11)
# ComponentIngredient.create(component_id: 7, ingredient_id: 9)
# ComponentIngredient.create(component_id: 8, ingredient_id: 14)
# ComponentIngredient.create(component_id: 8, ingredient_id: 15)
# ComponentIngredient.create(component_id: 8, ingredient_id: 16)
# ComponentIngredient.create(component_id: 8, ingredient_id: 17)

Ingredient.create(name: 'Halibut', quantity: 1, quantity_unit: 'oz', category_id: 1, par: 20, vendor_id: 4)
Ingredient.create(name: 'Short Rib', quantity: 1, quantity_unit: 'oz', category_id: 1, par: 20, vendor_id: 3)
Ingredient.create(name: 'Octopus', quantity: 1, quantity_unit: 'oz', category_id: 1, par: 20, vendor_id: 4)
Ingredient.create(name: 'Salmon', quantity: 1, quantity_unit: 'oz', category_id: 1, par: 20, vendor_id: 4)
Ingredient.create(name: 'Ribeye', quantity: 1, quantity_unit: 'oz', category_id: 1, par: 20, vendor_id: 3)
Ingredient.create(name: 'Duck', quantity: 1, quantity_unit: 'oz', category_id: 1, par: 20, vendor_id: 3)
Ingredient.create(name: 'Radicchio', quantity: 2, quantity_unit: 'Cups', category_id: 2, par: 20, vendor_id: 2)
Ingredient.create(name: 'Fennel', quantity: 1, quantity_unit: 'Cups', category_id: 2, par: 10, vendor_id: 2)
Ingredient.create(name: 'Sunchoke', quantity: 1, quantity_unit: 'Cups', category_id: 2, par: 20, vendor_id: 2)
Ingredient.create(name: 'Honeycrisp Apple', quantity: 2, quantity_unit: 'Cups', category_id: 2, par: 20, vendor_id: 2)
Ingredient.create(name: 'Brioche', quantity: 2, quantity_unit: 'slices', category_id: 4, par: 20, vendor_id: 1)
Ingredient.create(name: 'Olive Oil', quantity: 1, quantity_unit: 'Cups', category_id: 4, par: 20, vendor_id: 1)
Ingredient.create(name: 'Raspberry Vinegar', quantity: 1, quantity_unit: 'Cups', category_id: 4, par: 20, vendor_id: 1)
Ingredient.create(name: 'Garlic', quantity: 1, quantity_unit: 'Cups', category_id: 2, par: 20, vendor_id: 2)
Ingredient.create(name: 'Lemon', quantity: 1, quantity_unit: 'Cups', category_id: 2, par: 20, vendor_id: 2)
Ingredient.create(name: 'Egg Yolk', quantity: 1, quantity_unit: 'Cups', category_id: 3, par: 20, vendor_id: 1)
Ingredient.create(name: 'Canola Oil', quantity: 1, quantity_unit: 'Quart', category_id: 4, par: 20, vendor_id: 1)

puts 'seeded'