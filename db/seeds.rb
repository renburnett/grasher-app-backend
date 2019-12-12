
User.destroy_all
Fridge.destroy_all
FoodItem.destroy_all

ron = User.create(name: "ron", email: "r@r.com", password: "123", budget: 132.44)
don = User.create(name: "don", email: "d@d.com", password: "123", budget: 666.00)

kitchenFridge = Fridge.create(
  name: "Kitchen Fridge", 
  user: don,
  food_capacity: 8,
  drink_capacity: 10,
  is_full: false, 
  total_items_value: 128.92
)

basementFridge = Fridge.create(
  name: "Basement Fridge", 
  user: ron,
  food_capacity: 10,
  drink_capacity: 12, 
  is_full: false, 
  total_items_value: 188.41
)

garageFridge = Fridge.create(
  name: "Garage Fridge", 
  user: ron,
  food_capacity: 4,
  drink_capacity: 5, 
  is_full: false,
  total_items_value: 88.41
)

foodBankFridge = Fridge.create(
  name: "Food Bank Fridge", 
  user: ron,
  food_capacity: 12,
  drink_capacity: 15, 
  is_full: false,
  total_items_value: 188.41
)

#Seed food bank fridge tings
foodBankFridge.food_items.create(
  name: "pear",
  is_drink: false,
  food_type: "fruit",
  price: 1.32,
  quantity: 1,
  expiration_date: DateTime.parse('December 29, 2019 03:24:00')
)

foodBankFridge.food_items.create(
  name: "bagels",
  is_drink: false,
  food_type: "processed",
  price: 3.63,
  quantity: 1,
  expiration_date: DateTime.parse('December 30, 2019 03:24:00')
)

foodBankFridge.food_items.create(
  name: "lemonade",
  is_drink: true,
  food_type: "processed",
  price: 3.80,
  quantity: 1,
  expiration_date: DateTime.parse('December 19, 2019 03:24:00')
)

# Seed basement fridge tings
basementFridge.food_items.create(
  name: "pear",
  is_drink: false,
  food_type: "fruit",
  price: 1.32,
  quantity: 1,
  expiration_date: DateTime.parse('December 25, 2019 03:24:00')
)

basementFridge.food_items.create(
  name: "dunkaroos",
  is_drink: false,
  food_type: "processed",
  price: 3.63,
  quantity: 1,
  expiration_date: DateTime.parse('December 17, 2019 03:24:00')
)

basementFridge.food_items.create(
  name: "apple juice",
  is_drink: true,
  food_type: "processed",
  price: 3.80,
  quantity: 1,
  expiration_date: DateTime.parse('December 18, 2019 03:24:00')
)

basementFridge.food_items.create(
  name: "pinapple",
  is_drink: false,
  food_type: "fruit",
  price: 10.61,
  quantity: 1,
  expiration_date: DateTime.parse('December 16, 2019 03:24:00')
)

# Seed kitchen fridge tings
kitchenFridge.food_items.create(
  name: "1lb of potatoes",
  is_drink: false,
  food_type: "vegetable",
  price: 6.04,
  quantity: 1,
  expiration_date: DateTime.parse('December 31, 2019 03:24:00')
)

kitchenFridge.food_items.create(
  name: "soylent green 12pk",
  is_drink: true,
  food_type: "processed",
  price: 12.93,
  quantity: 1,
  expiration_date: DateTime.parse('December 17, 2019 03:24:00')
)

kitchenFridge.food_items.create(
  name: "gogurt multipack",
  is_drink: true,
  food_type: "dairy",
  price: 8.75,
  quantity: 1,
  expiration_date: DateTime.parse('December 27, 2019 03:24:00')
)

# Seed garage fridge tings
garageFridge.food_items.create(
  name: "salami",
  is_drink: false,
  food_type: "meat",
  price: 6.78,
  quantity: 1,
  expiration_date: DateTime.parse('December 26, 2019 03:24:00')
)

garageFridge.food_items.create(
  name: "ice cream",
  is_drink: false,
  food_type: "dairy",
  price: 5.37,
  quantity: 1,
  expiration_date: DateTime.parse('December 27, 2019 00:24:00')
)

garageFridge.food_items.create(
  name: "wine",
  is_drink: true,
  food_type: "processed",
  price: 10.61,
  quantity: 1,
  expiration_date: DateTime.parse('December 30, 2019 03:24:00')
)