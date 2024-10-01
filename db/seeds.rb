# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

# Clear existing data
Brand.destroy_all
Watch.destroy_all

# Seed Brands
rolex = Brand.create!(name: 'Rolex', country: "Switzerland")
omega = Brand.create!(name: 'Omega', country: "Switzerland")
seiko = Brand.create!(name: 'Seiko', country: "Japan")

# Seed Watches
Watch.create!([
  { reference_number: '126200', model: 'Datejust', price: 7450, movement: 'Rolex 3235', year_of_production: '2022', case_material: 'Oystersteel', case_diameter: '36', bracelet: 'Jubilee', description: 'Blue Dial, Domed Bezel', brand: rolex },
  { reference_number: '310.30.42.50.01.002', model: 'Speedmaster', price: 5200, movement: 'Omega 3861', year_of_production: '2021', case_material: 'Stainless Steel', case_diameter: '42', bracelet: 'Steel', description: 'Black Dial, Moonwatch', brand: omega },
  { reference_number: 'SPB143', model: 'Prospex', price: 1200, movement: '6R35', year_of_production: '2020', case_material: 'Stainless Steel', case_diameter: '40.5', bracelet: 'Steel', description: 'Grey Dial, Dive Watch', brand: seiko }
])
