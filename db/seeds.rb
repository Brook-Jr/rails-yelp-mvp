# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "...cleaning records"
Restaurant.destroy_all

puts "...seeding database"
restaurants_data = [
  { name: 'Chinese Place', address: '123 Main St', phone_number: '555-1234', category: 'chinese' },
  { name: 'Italian Trattoria', address: '456 Oak St', phone_number: '555-5678', category: 'italian' },
  { name: 'Sushi Delight', address: '789 Maple St', phone_number: '555-9012', category: 'japanese' },
  { name: 'French Bistro', address: '101 Pine St', phone_number: '555-3456', category: 'french' },
  { name: 'Belgian Waffles', address: '202 Elm St', phone_number: '555-7890', category: 'belgian' }
]
restaurants_data.each do |restaurant_data|
  Restaurant.create!(restaurant_data)
end
puts "✓ database seeded ✓"
