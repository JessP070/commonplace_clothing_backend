# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cart.destroy_all
Product.destroy_all

money = Cart.create(total: 69.99, quantity: 1)
chedd = Cart.create(total: 19.99, quantity: 1)
scrill = Cart.create(total: 45.00, quantity: 1)

Product.create(name: "Nike Training Joggers", price: 69.99, description: "perfect pant for on-the-go comfort", image_url: "https://scheels.scene7.com/is/image/Scheels/19314684140?wid=1200&hei=1200", cart_id: money.id)

Product.create(name: "Adidas Training Pant", price: 19.99, description: "These pants offer a classic, yet modern three-stripe design on each leg", image_url: "https://scheels.scene7.com/is/image/Scheels/19196578086_2?wid=1200&hei=1200", cart_id: chedd.id)

Product.create(name: "Women's Under Armour Tech 2.0 Joggers", price: 45.00, description: "These joggers feature a loose fit with a tapered leg.", image_url: "https://scheels.scene7.com/is/image/Scheels/19281162948?wid=1200&hei=1200", cart_id: scrill.id)
