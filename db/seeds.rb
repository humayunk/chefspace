# db/seeds.rb

# Clear existing data in the correct order to avoid foreign key violations
Reservation.destroy_all
Kitchen.destroy_all
User.destroy_all

# Create Users
users = User.create!([
  {
    email: "user1@example.com",
    password: "password1",
    password_confirmation: "password1",
    first_name: "John",
    last_name: "Doe",
    date_of_birth: "1990-01-01",
    location: "New York",
    role: "renter"
  },
  {
    email: "user2@example.com",
    password: "password2",
    password_confirmation: "password2",
    first_name: "Jane",
    last_name: "Smith",
    date_of_birth: "1985-05-05",
    location: "Los Angeles",
    role: "lister"
  }
])

# Create Kitchens
kitchens = Kitchen.create!([
  {
    user_id: users[1].id,
    name: "Main Street Kitchen",
    address: "123 Main St, Los Angeles, CA",
    daily_rate: 150,
    kitchen_type: "commercial",
    description: "A fully equipped commercial kitchen.",
    has_parking: true,
    has_fire_safety: true,
    has_refrigeration: true,
    storage_type: "cold and dry",
    has_oven: true,
    has_stove: true,
    has_fryer: true,
    has_dishwasher: true,
    has_cookware: true,
    has_cutlery: true,
    availability: true,
    prep_tables: 5
  },
  {
    user_id: users[1].id,
    name: "Elm Street Kitchen",
    address: "456 Elm St, Los Angeles, CA",
    daily_rate: 200,
    kitchen_type: "industrial",
    description: "A large industrial kitchen with modern appliances.",
    has_parking: true,
    has_fire_safety: true,
    has_refrigeration: true,
    storage_type: "cold and dry",
    has_oven: true,
    has_stove: true,
    has_fryer: true,
    has_dishwasher: true,
    has_cookware: true,
    has_cutlery: true,
    availability: true,
    prep_tables: 8
  }
])

# Create Reservations
reservations = Reservation.create!([
  {
    user_id: users[0].id,
    kitchen_id: kitchens[0].id,
    start_date: Date.today,
    end_date: Date.today + 7,
    total_price: 1050.0,
    status: "confirmed"
  },
  {
    user_id: users[0].id,
    kitchen_id: kitchens[1].id,
    start_date: Date.today + 10,
    end_date: Date.today + 17,
    total_price: 1400.0,
    status: "confirmed"
  }
])
