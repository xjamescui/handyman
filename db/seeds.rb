# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

rentables = Rentable.create([
  { name: "Compactor", location: "In Store", quantity: 5, category: "CateoryA", image_name: "compactor.png" },
  { name: "Ground Drill", location: "In Store", quantity: 5, category: "CateoryA", image_name: "ground_drill.png" },
  { name: "Concrete Equipment", location: "In Store", quantity: 5, category: "CateoryA", image_name: "concrete_equipment.png" },
  { name: "Circular Saw", location: "In Store", quantity: 5, category: "CateoryA", image_name: "circular_saw.png" },
  { name: "Chainsaw", location: "In Store", quantity: 5, category: "CateoryA" },
  { name: "Generator Set", location: "In Store", quantity: 5, category: "CateoryA" },
])