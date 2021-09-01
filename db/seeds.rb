User.destroy_all
Category.destroy_all
Ingredient.destroy_all
Vendor.destroy_all 

User.create(first_name: 'Evan', last_name: 'Fujita', username: 'evan', password: 'aaa', password_confirmation: 'aaa')

Restaurant.create(name: 'Fujiya', location: 'Chicago', phone: '111-111-1111')

Vendor.create(name: 'GFS', representative: 'Abbie', phone: '708-432-9083', email: 'evanfujita@gmail.com')
Vendor.create(name: 'Local Farms', representative: 'James', phone: '847-908-1232', email: 'evanfujita@gmail.com')
Vendor.create(name: 'Linz Meats', representative: 'Daniel', phone: '773-098-1533', email: 'evanfujita@gmail.com')
Vendor.create(name: 'Seafood Merchants', representative: 'Rachelle', phone: '815-123-0983', email: 'evanfujita@gmail.com')
Vendor.create(name: "D'Artagnan", representative: 'David', phone: '815-443-8733', email: 'evanfujita@gmail.com')
Vendor.create(name: 'Rare Tea', representative: 'Raza', phone: '708-123-6543', email: 'evanfujita@gmail.com')
Vendor.create(name: 'The Mushroom Guy', representative: 'Mushroom Mike', phone: '708-999-1243', email: 'evanfujita@gmail.com')

Category.create(name: 'Protein', user_id: 1)
Category.create(name: 'Produce', user_id: 1)
Category.create(name: 'Dairy', user_id: 1)
Category.create(name: 'Dry Goods', user_id: 1)

Ingredient.create(name: 'Halibut', quantity: 255, quantity_unit: 'oz', category_id: 1, par: 200, vendor_id: 4, low: false)
Ingredient.create(name: 'Scallop', quantity: 155, quantity_unit: 'oz', category_id: 1, par: 200, vendor_id: 4, low: false)
Ingredient.create(name: 'Half Chicken', quantity: 1, quantity_unit: 'ea', category_id: 1, par: 20, vendor_id: 4, low: false)
Ingredient.create(name: 'Short Rib', quantity: 16, quantity_unit: 'ea', category_id: 1, par: 20, vendor_id: 3, low: false)
Ingredient.create(name: 'Octopus', quantity: 80, quantity_unit: 'oz', category_id: 1, par: 40, vendor_id: 4, low: false)
Ingredient.create(name: 'Salmon', quantity: 1, quantity_unit: 'oz', category_id: 1, par: 20, vendor_id: 4, low: false)
Ingredient.create(name: 'Ribeye', quantity: 1, quantity_unit: 'oz', category_id: 1, par: 20, vendor_id: 3, low: false)
Ingredient.create(name: 'Duck', quantity: 1, quantity_unit: 'oz', category_id: 1, par: 20, vendor_id: 3, low: false)
Ingredient.create(name: 'Radicchio', quantity: 2, quantity_unit: 'lbs', category_id: 2, par: 20, vendor_id: 2, low: false)
Ingredient.create(name: 'Chinese Broccoli', quantity: 2, quantity_unit: 'lbs', category_id: 2, par: 20, vendor_id: 2, low: false)
Ingredient.create(name: 'Asparagus, White', quantity: 2, quantity_unit: 'lbs', category_id: 2, par: 20, vendor_id: 2, low: false)
Ingredient.create(name: 'Asparagus, Green', quantity: 2, quantity_unit: 'lbs', category_id: 2, par: 20, vendor_id: 2, low: false)
Ingredient.create(name: 'Morels', quantity: 2, quantity_unit: 'lbs', category_id: 2, par: 20, vendor_id: 7, low: false)
Ingredient.create(name: 'Chanterelles', quantity: 2, quantity_unit: 'lbs', category_id: 2, par: 20, vendor_id: 7, low: false)
Ingredient.create(name: 'Maitake Mushrooms', quantity: 2, quantity_unit: 'lbs', category_id: 2, par: 20, vendor_id: 7, low: false)
Ingredient.create(name: 'Fennel', quantity: 1, quantity_unit: 'lbs', category_id: 2, par: 10, vendor_id: 2, low: false)
Ingredient.create(name: 'Cauliflower', quantity: 1, quantity_unit: 'lbs', category_id: 2, par: 10, vendor_id: 2, low: false)
Ingredient.create(name: 'Celeriac', quantity: 1, quantity_unit: 'lbs', category_id: 2, par: 10, vendor_id: 2, low: false)
Ingredient.create(name: 'Carrot', quantity: 1, quantity_unit: 'lbs', category_id: 2, par: 10, vendor_id: 2, low: false)
Ingredient.create(name: 'Sunchoke', quantity: 1, quantity_unit: 'lbs', category_id: 2, par: 20, vendor_id: 2, low: false)
Ingredient.create(name: 'Apple, Honeycrisp', quantity: 2, quantity_unit: 'lbs', category_id: 2, par: 20, vendor_id: 2, low: false)
Ingredient.create(name: 'Apple, Granny Smith', quantity: 2, quantity_unit: 'lbs', category_id: 2, par: 20, vendor_id: 2, low: false)
Ingredient.create(name: 'Brioche', quantity: 2, quantity_unit: 'loaves', category_id: 4, par: 20, vendor_id: 1, low: false)
Ingredient.create(name: 'Oil, Olive', quantity: 1, quantity_unit: 'lbs', category_id: 4, par: 20, vendor_id: 1, low: false)
Ingredient.create(name: 'Vinegar, Raspberry', quantity: 1, quantity_unit: 'lbs', category_id: 4, par: 20, vendor_id: 1, low: false)
Ingredient.create(name: 'Vinegar, Apple Cider', quantity: 1, quantity_unit: 'lbs', category_id: 4, par: 20, vendor_id: 1, low: false)
Ingredient.create(name: 'Garlic', quantity: 1, quantity_unit: 'lbs', category_id: 2, par: 2, vendor_id: 2, low: false)
Ingredient.create(name: 'Onion, Red', quantity: 1, quantity_unit: 'lbs', category_id: 2, par: 20, vendor_id: 2, low: false)
Ingredient.create(name: 'Onion, Cippolini', quantity: 1, quantity_unit: 'lbs', category_id: 2, par: 20, vendor_id: 2, low: false)
Ingredient.create(name: 'Lemon', quantity: 1, quantity_unit: 'lbs', category_id: 2, par: 20, vendor_id: 2, low: false)
Ingredient.create(name: 'Egg, Yolk', quantity: 1, quantity_unit: 'cartons', category_id: 3, par: 20, vendor_id: 1, low: false)
Ingredient.create(name: 'Egg, Whole', quantity: 1, quantity_unit: 'cartons', category_id: 3, par: 20, vendor_id: 1, low: false)
Ingredient.create(name: 'Butter', quantity: 1, quantity_unit: 'lbs', category_id: 3, par: 20, vendor_id: 1, low: false)
Ingredient.create(name: 'Heavy Cream', quantity: 1, quantity_unit: 'qts', category_id: 3, par: 20, vendor_id: 1, low: false)
Ingredient.create(name: 'Whole Milk', quantity: 1, quantity_unit: 'gals', category_id: 3, par: 20, vendor_id: 1, low: false)
Ingredient.create(name: 'Oil, Canola', quantity: 1, quantity_unit: 'qts', category_id: 4, par: 20, vendor_id: 1, low: false)


puts 'seeded'