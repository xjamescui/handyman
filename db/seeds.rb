# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


rentables = Rentable.create([
                                {name: "Compactor", location: "Hamilton", quantity: 5, category: "Heavy", image_name: "compactor.png"},
                                {name: "Ground Drill", location: "London", quantity: 5, category: "Light", image_name: "ground_drill.png"},
                                {name: "Concrete Equipment", location: "Waterloo", quantity: 5, category: "Heavy", image_name: "concrete_equipment.png"},
                                {name: "Circular Saw", location: "Hamilton", quantity: 5, category: "Light", image_name: "circular_saw.png"},
                                {name: "Chainsaw", location: "Barrie", quantity: 5, category: "Light"},
                                {name: "Generator Set", location: "Hamilton", quantity: 0, category: "Light"},
                            ])

rate_tables = RateTable.create([
                                   {rentable: rentables[0], daily: 65, weekly: 260}, # Compactor
                                   {rentable: rentables[1], daily: 40, weekly: 154}, # Ground Drill
                                   {rentable: rentables[4], daily: 15, weekly: 60} # Circular Saw
                               ])