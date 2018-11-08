# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

user1 = User.create(name: "Rawan", location: "Riyadh", email: "sjdmc@dk.com", password: "chicken", password_confirmation: "chicken")
user2 = User.create(name: "Moath", location: "Riyadh", email: "moath@dk.com", password: "chicken", password_confirmation: "chicken")

Appliance.destroy_all

Appliance.create(name: "Blender", image: "http://cdn.shopify.com/s/files/1/2073/4699/products/PDP_PROD_DEFAULT_KBL330WHT_800x.jpg?v=1497321963", description: "A stationary blender consists of a blender jar with a rotating metal blade at the bottom, powered by an electric motor in the base.", availability: true, customer_id: user1.id, provider_id: user2.id)

Appliance.create(name: "Mixer", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQXYbI4u6Jk6bvo-Jr6lNKdVG4on5djmnIKRB8PVu5oVyNIC91xA", description: "KitchenAid Tilt-Head Stand Mixer
4-1/2 quart and stainless steel bowl w/flat handle", availability: true, customer_id: user1.id, provider_id: user2.id)

Appliance.create(name: "Crockpot", image: "https://www.crock-pot.com/dw/image/v2/AAMB_PRD/on/demandware.static/-/Sites-master-catalog/default/dwf0b69e9e/images/highres/CrockPot_066_SCCPVFC800-DS_02.jpg?sw=500&sh=500&sm=fit", description: "Works on 240 Watts at 120V A.C. and 60Hz
Digital countdown control lets you program cook-times anywhere from 30 minutes up to 20 hours
Shifts to warm setting automatically once cook-time completes
", availability: true, customer_id: user1.id, provider_id: user2.id)

Appliance.create(name: "Toaster", image: "https://images-na.ssl-images-amazon.com/images/I/81smEEgnhfL._SX425_.jpg", description: "2-slice toaster for toasting one or two slices of bread at a time; 6 shade settings accommodate individual preferences", availability: true, customer_id: user1.id, provider_id: user2.id)
