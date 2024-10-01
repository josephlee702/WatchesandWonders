Brand.destroy_all
Watch.destroy_all

#create the brands
rolex = Brand.create!(name: 'Rolex', country: "Switzerland")
omega = Brand.create!(name: 'Omega', country: "Switzerland")
seiko = Brand.create!(name: 'Seiko', country: "Japan")

#create the watches and attach photos
watch1 = Watch.create!(
  reference_number: '126200', 
  model: 'Datejust', 
  price: 7450, 
  movement: 'Rolex 3235', 
  year_of_production: '2022', 
  case_material: 'Oystersteel', 
  case_diameter: '36', 
  bracelet: 'Jubilee', 
  description: 'Blue Dial, Domed Bezel', 
  brand: rolex
)

watch1.photo.attach(
  io: File.open(Rails.root.join('db/datejust.webp')), 
  filename: 'datejust.webp', 
  content_type: 'image/webp'
)

watch2 = Watch.create!(
  reference_number: '310.30.42.50.01.002', 
  model: 'Speedmaster', 
  price: 5200, 
  movement: 'Omega 3861', 
  year_of_production: '2021', 
  case_material: 'Stainless Steel', 
  case_diameter: '42', 
  bracelet: 'Steel', 
  description: 'Black Dial, Moonwatch', 
  brand: omega
)

watch2.photo.attach(
  io: File.open(Rails.root.join('db/speedmaster_42mm.webp')), 
  filename: 'speedmaster_42mm.webp', 
  content_type: 'image/webp'
)

watch3 = Watch.create!(
  reference_number: 'SPB143', 
  model: 'Prospex', 
  price: 1200, 
  movement: '6R35', 
  year_of_production: '2020', 
  case_material: 'Stainless Steel', 
  case_diameter: '40.5', 
  bracelet: 'Steel', 
  description: 'Grey Dial, Dive Watch', 
  brand: seiko
)

watch3.photo.attach(
  io: File.open(Rails.root.join('db/seiko_prospex.jpg')), 
  filename: 'seiko_prospex.jpg', 
  content_type: 'image/jpg'
)