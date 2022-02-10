# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Visit.destroy_all

puts "cleaning the database"

visit = Visit.create!(name: "The Making Of Harry Potter", description: "la visite des studios e Harry Potter", location: "Studio Tour Drive, Leavesden, WD25 7LR", price: 59.90, date: "2022-02-15 00:00:00.000000000 +0000", heure: "18 heures")
p "#{visit.name} created"
visit1 = Visit.create!(name: "The Little Venice", description: "Visit en péniche du Regent Canal jusqu'à Camdem", location: "Maida Ave, London, Royaume-Uni", price: 15, date: "2022-02-16 00:00:00.000000000 +0000", heure: "A définir")
p "#{visit1.name} created"
