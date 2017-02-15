# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all

restaurant_attributes = [
  {
    name: "Epicure au Bristol",
    address: "112 rue du Faubourg Saint-Honoré, 75008, Paris",
    phone_number: "123-456-7899",
    category: "chinese"
  },
  {
    name: "La Truffière",
    address: "4 rue Blainville, 75005, Paris",
    phone_number: "234-567-2346",
    category: "french"
  },
  {
    name: "Le Pré Catelan",
    address: "route de Suresnes, 75016, Paris",
    phone_number: "234-567-2123",
    category: "italian"
  }
]

restaurant_attributes.each { |attrs| Restaurant.create!(attrs) }

