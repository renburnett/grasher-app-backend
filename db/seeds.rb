
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

# Seed basement fridge tings
basementFridge.food_items.create(
  name: "pear",
  is_drink: false,
  is_processed: false,
  price: 1.32,
  expiration_date: DateTime.new(2019, 11, 25, 9, 23, 43)
)

basementFridge.food_items.create(
  name: "lunchable",
  is_drink: false,
  is_processed: true,
  price: 3.63,
  expiration_date: DateTime.new(2019, 11, 26, 11, 50, 13)
)

basementFridge.food_items.create(
  name: "apple juice",
  is_drink: true,
  is_processed: true,
  price: 3.80,
  expiration_date: DateTime.new(2019, 11, 24, 12, 16, 59)
)

# Seed kitchen fridge tings
kitchenFridge.food_items.create(
  name: "1lb of potatoes",
  is_drink: false,
  is_processed: false,
  price: 6.04,
  expiration_date: DateTime.new(2019, 11, 25, 9, 23, 43)
)

kitchenFridge.food_items.create(
  name: "soylent green 12pk",
  is_drink: true,
  is_processed: true,
  price: 12.93,
  expiration_date: DateTime.new(2020, 11, 26, 12, 50, 55)
)

kitchenFridge.food_items.create(
  name: "gogurt multipack",
  is_drink: true,
  is_processed: true,
  price: 8.75,
  expiration_date: DateTime.new(2020, 1, 24, 12, 16, 59)
)

# Seed garage fridge tings
garageFridge.food_items.create(
      name: "salami",
      is_drink: false,
      is_processed: true,
      price: 6.78,
      expiration_date: DateTime.new(2019, 12, 29, 1, 33, 49)
    )

garageFridge.food_items.create(
      name: "ice cream",
      is_drink: false,
      is_processed: true,
      price: 5.37,
      expiration_date: DateTime.new(2020, 02, 15, 19, 52, 43)
    )

garageFridge.food_items.create(
      name: "wine",
      is_drink: true,
      is_processed: true,
      price: 10.61,
      expiration_date: DateTime.new(2020, 03, 04, 23, 33, 31)
    )