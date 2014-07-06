# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


rentables = Rentable.create([
                                {name: "Compactor", location: "Hamilton", quantity: 5, category: "Heavy", image_name: "compactor.jpg"},
                                {name: "Ground Drill", location: "London", quantity: 5, category: "Light", image_name: "ground_drill.jpg"},
                                {name: "Concrete Equipment", location: "Waterloo", quantity: 5, category: "Heavy", image_name: "concrete_equipment.jpg"},
                                {name: "Circular Saw", location: "Hamilton", quantity: 5, category: "Light", image_name: "circular_saw.jpg"},
                                {name: "Chainsaw", location: "Barrie", quantity: 5, category: "Light", image_name: "chain_saw.jpg"},
                                {name: "Generator Set", location: "Hamilton", quantity: 0, category: "Light", image_name: "generator_set.jpg"},
                            ])

rate_tables = RateTable.create([
                                   {rentable: rentables[0], hourly: 7.25, daily: 65, weekly: 260},
                                   {rentable: rentables[1], hourly: 5.65, daily: 40, weekly: 154},
                                   {rentable: rentables[2], hourly: 6.25, daily: 50, weekly: 200},
                                   {rentable: rentables[3], hourly: 7.25, daily: 65, weekly: 260},
                                   {rentable: rentables[4], hourly: 5.65, daily: 40, weekly: 154},
                                   {rentable: rentables[5], hourly: 6.25, daily: 43, weekly: 186}
                               ])