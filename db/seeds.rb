User.destroy_all
Fridge.destroy_all
FoodItem.destroy_all


ron = User.create!(
  username: 'ron',
  email: 'r@r.com',
  password: '123',
  phone_number: '2066697498'
)

don = User.create!(
  username: 'don',
  email: 'd@d.com',
  password: '123',
  phone_number: '2068675369'
)

kitchenFridge = Fridge.create(
  name: 'Kitchen Fridge',
  user: don,
  food_capacity: 8,
  drink_capacity: 10,
  is_full: false,
  total_items_value: 128.92
)

basementFridge = Fridge.create(
  name: 'Basement Fridge',
  user: ron,
  food_capacity: 10,
  drink_capacity: 12,
  is_full: false,
  total_items_value: 188.41
)

garageFridge = Fridge.create(
  name: 'Garage Fridge',
  user: ron,
  food_capacity: 4,
  drink_capacity: 5,
  is_full: false,
  total_items_value: 88.41
)

foodBankFridge = Fridge.create(
  name: 'Food Bank Fridge',
  user: ron,
  food_capacity: 12,
  drink_capacity: 15,
  is_full: false,
  total_items_value: 188.41
)

# Seed food bank fridge tings
foodBankFridge.food_items.create(
  name: 'pear',
  is_drink: false,
  food_type: 'fruit',
  price: 1.32,
  quantity: 1,
  expiration_date: Date.today + 55.hours
)

foodBankFridge.food_items.create(
  name: 'bagels',
  is_drink: false,
  food_type: 'processed',
  price: 3.63,
  quantity: 1,
  expiration_date: Date.today + 70.hours
)

foodBankFridge.food_items.create(
  name: 'canned tomatoes',
  is_drink: true,
  food_type: 'processed',
  price: 2.54,
  quantity: 1,
  expiration_date: Date.today + 50.hours
)

foodBankFridge.food_items.create(
  name: 'buttermilk',
  is_drink: true,
  food_type: 'dairy',
  price: 5.80,
  quantity: 1,
  expiration_date: Date.today + 80.hours
)

foodBankFridge.food_items.create(
  name: 'ham',
  is_drink: false,
  food_type: 'meat',
  price: 5.80,
  quantity: 1,
  expiration_date: Date.today + 80.hours
)

foodBankFridge.food_items.create(
  name: 'lemonade',
  is_drink: true,
  food_type: 'processed',
  price: 3.80,
  quantity: 1,
  expiration_date: Date.today + 50.hours
)

# Seed basement fridge tings
basementFridge.food_items.create(
  name: 'pear',
  is_drink: false,
  food_type: 'fruit',
  price: 1.32,
  quantity: 1,
  expiration_date: Date.today + 50.hours
)

basementFridge.food_items.create(
  name: 'kale',
  is_drink: false,
  food_type: 'vegetable',
  price: 3.63,
  quantity: 1,
  expiration_date: Date.today + 70.hours
)

basementFridge.food_items.create(
  name: 'asparagus',
  is_drink: false,
  food_type: 'vegetable',
  price: 1.61,
  quantity: 1,
  expiration_date: Date.today + 50.hours
)

basementFridge.food_items.create(
  name: 'apple juice',
  is_drink: true,
  food_type: 'processed',
  price: 3.80,
  quantity: 1,
  expiration_date: Date.today + 160.hours
)

basementFridge.food_items.create(
  name: 'pineapple',
  is_drink: false,
  food_type: 'fruit',
  price: 10.61,
  quantity: 1,
  expiration_date: Date.today + 100.hours
)

basementFridge.food_items.create(
  name: 'oats',
  is_drink: false,
  food_type: 'grain',
  price: 5.61,
  quantity: 1,
  expiration_date: Date.today + 60.hours
)

# Seed kitchen fridge tings
kitchenFridge.food_items.create(
  name: '1lb of potatoes',
  is_drink: false,
  food_type: 'vegetable',
  price: 6.04,
  quantity: 1,
  expiration_date: Date.today + 160.hours
)

kitchenFridge.food_items.create(
  name: 'soylent green 12pk',
  is_drink: true,
  food_type: 'processed',
  price: 12.93,
  quantity: 1,
  expiration_date: Date.today + 50.hours
)

kitchenFridge.food_items.create(
  name: 'gogurt multipack',
  is_drink: true,
  food_type: 'dairy',
  price: 8.75,
  quantity: 1,
  expiration_date: Date.today + 60.hours
)

kitchenFridge.food_items.create(
  name: 'white bread',
  is_drink: false,
  food_type: 'grain',
  price: 3.64,
  quantity: 1,
  expiration_date: Date.today + 70.hours
)

# Seed garage fridge tings
garageFridge.food_items.create(
  name: 'salami',
  is_drink: false,
  food_type: 'meat',
  price: 6.78,
  quantity: 1,
  expiration_date: Date.today + 50.hours
)

garageFridge.food_items.create(
  name: 'ice cream',
  is_drink: false,
  food_type: 'dairy',
  price: 5.37,
  quantity: 1,
  expiration_date: Date.today + 80.hours
)

garageFridge.food_items.create(
  name: 'wine',
  is_drink: true,
  food_type: 'processed',
  price: 10.61,
  quantity: 1,
  expiration_date: Date.today + 70.hours
)

garageFridge.food_items.create(
  name: 'wheat bread',
  is_drink: false,
  food_type: 'grain',
  price: 4.61,
  quantity: 1,
  expiration_date: Date.today + 70.hours
)