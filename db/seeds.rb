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
    first_name: "Juliette",
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
  },
  {
    email: "user3@example.com",
    password: "password3",
    password_confirmation: "password3",
    first_name: "Alice",
    last_name: "Johnson",
    date_of_birth: "1992-07-07",
    location: "Chicago",
    role: "renter"
  }
])

kitchens = Kitchen.create!([
  {
    user_id: users[1].id,
    name: "Main Street Kitchen",
    address: "123 Main St, Montreal, QC",
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
    prep_tables: 5,
    photos: [{
      io: URI.open("https://cloudkitchens.com/_gatsby/file/e048d5d76a53e7581bff8af54badab21/Copy-of-Images-for-Blogs-1.png"),
      filename: "kitchen1.png",
      content_type: "image/png"
    }]
  },
  {
    user_id: users[1].id,
    name: "Elm Street Kitchen",
    address: "456 Elm St, Montreal, QC",
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
    prep_tables: 8,
    photos: [{
      io: URI.open("https://www.avanticorporate.com/wp-content/uploads/2022/01/commercial-kitchen-size-blog-header-scaled-e1645764462148.jpeg"),
      filename: "kitchen1.png",
      content_type: "image/png"
    }]
  },
  {
    user_id: users[1].id,
    name: "Sunset Boulevard Kitchen",
    address: "789 Sunset Blvd, Montreal, QC",
    daily_rate: 180,
    kitchen_type: "commercial",
    description: "A spacious commercial kitchen with all amenities.",
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
    prep_tables: 6,
    photos: [{
      io: URI.open("https://www.citiindustries.com.au/wp-content/uploads/2018/09/kitchen-flooring.jpg"),
      filename: "kitchen1.png",
      content_type: "image/png"
    }]
  },
  {
    user_id: users[1].id,
    name: "Ocean Avenue Kitchen",
    address: "321 Ocean Ave, Montreal, QC",
    daily_rate: 250,
    kitchen_type: "industrial",
    description: "A state-of-the-art industrial kitchen.",
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
    prep_tables: 10,
    photos: [{
      io: URI.open("https://flooringsolutions.ph/wp-content/uploads/2023/10/kitchen-appliances-professional-kitchen-restaurant-nobody.jpg"),
      filename: "kitchen1.png",
      content_type: "image/png"
    }]
  },
  {
    user_id: users[1].id,
    name: "Broadway Kitchen",
    address: "654 Broadway, Montreal, QC",
    daily_rate: 120,
    kitchen_type: "commercial",
    description: "A versatile commercial kitchen perfect for catering.",
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
    prep_tables: 4,
    photos: [{
      io: URI.open("https://i.pinimg.com/550x/5b/6a/8a/5b6a8abcef7aa8f5b9690dff4730ee74.jpg"),
      filename: "kitchen1.png",
      content_type: "image/png"
    }]
  },
  {
    user_id: users[1].id,
    name: "Market Street Kitchen",
    address: "987 Market St, Montreal, QC",
    daily_rate: 220,
    kitchen_type: "industrial",
    description: "An industrial kitchen with extensive equipment.",
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
    prep_tables: 9,
    photos: [{
      io: URI.open("https://gibsonspublicmarket.com/wp-content/uploads/2021/08/Commercial-Kitchen_1.jpg"),
      filename: "kitchen1.png",
      content_type: "image/png"
    }]
  },
  {
    user_id: users[1].id,
    name: "Hollywood Kitchen",
    address: "432 Hollywood Blvd, Montreal, QC",
    daily_rate: 170,
    kitchen_type: "commercial",
    description: "A well-equipped commercial kitchen for all needs.",
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
    prep_tables: 7,
    photos: [{
      io: URI.open("https://www.tmeco.com/wp-content/uploads/2018/09/Velvet-Taco-Austin_3141-scaled.jpg"),
      filename: "kitchen1.png",
      content_type: "image/png"
    }]
  },
  {
    user_id: users[1].id,
    name: "Vine Street Kitchen",
    address: "543 Vine St, Montreal, QC",
    daily_rate: 130,
    kitchen_type: "commercial",
    description: "A convenient commercial kitchen in a prime location.",
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
    prep_tables: 5,
    photos: [{
      io: URI.open("https://i.pinimg.com/564x/81/39/c4/8139c47387665895d6757cc8531eed0f.jpg"),
      filename: "kitchen1.png",
      content_type: "image/png"
    }]
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
    status: "accepted"
  },
  {
    user_id: users[0].id,
    kitchen_id: kitchens[1].id,
    start_date: Date.today + 10,
    end_date: Date.today + 17,
    total_price: 1400.0,
    status: "accepted"
  },
  {
    user_id: users[2].id,
    kitchen_id: kitchens[2].id,
    start_date: Date.today + 20,
    end_date: Date.today + 27,
    total_price: 1260.0,
    status: "pending"
  },
  {
    user_id: users[2].id,
    kitchen_id: kitchens[3].id,
    start_date: Date.today + 30,
    end_date: Date.today + 37,
    total_price: 2000.0,
    status: "declined"
  }
])
# Create Reviews
reviews = Review.create!([
  {
    content: 'Amazing kitchen with all the amenities. Highly recommend!',
    rating: 5,
    user_id: users[2].id,  # user3
    kitchen_id: kitchens[0].id  # Main Street Kitchen
  },
  {
    content: 'Good kitchen but could use more space.',
    rating: 4,
    user_id: users[0].id,  # user1
    kitchen_id: kitchens[1].id  # Elm Street Kitchen
  },
  {
    content: 'Perfect for private events!',
    rating: 5,
    user_id: users[1].id,  # user2
    kitchen_id: kitchens[2].id  # Sunset Boulevard Kitchen
  },
  {
    content: 'Well-maintained and clean. Would book again.',
    rating: 4,
    user_id: users[2].id,  # user3
    kitchen_id: kitchens[1].id  # Elm Street Kitchen
  },
  {
    content: 'Top-notch kitchen with modern equipment.',
    rating: 5,
    user_id: users[0].id,  # user1
    kitchen_id: kitchens[2].id  # Sunset Boulevard Kitchen
  }
])
