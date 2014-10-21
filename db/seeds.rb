Room.create!(name: "Living Room", private: false)
Room.create!(name: "Kitchen", private: false)
Room.create!(name: "Bathroom", private: false)
Room.create!(name: "Bedroom 1", private: true)
Room.create!(name: "Bedroom 2", private: true)
Room.create!(name: "Master Bedroom", private: true)
Room.create!(name: "Wine Cellar", private: true)

User.create!( email: "guest@house.com", password: "password", role: 1)
User.create!( email: "owner@house.com", password: "password", role: 0 )

puts "#{Room.count} rooms added."
puts "Owner account created: owner@house.com:password"
puts "Visitor account created: visitor@house.com:password"

