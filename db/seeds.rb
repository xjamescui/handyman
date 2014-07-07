# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


rentables = Rentable.create([
                                {name: "Compactor", location: "Hamilton", quantity: 5, category: "Heavy", image_name: "compactor.jpg", 
                                  description: "Used to reduce the volume of waste material. This plate compactor can effectively and efficiently compact granular soils, crushed aggregates, and hot mix asphalt in open jobsites of all sizes."},
                                {name: "Ground Drill", location: "London", quantity: 5, category: "Light", image_name: "ground_drill.jpg",
                                  description: "This one-man drill is used to create holes in the earth. It has been proven to be a reliable performer for over 30 years in the rental and fence industries."},
                                {name: "Concrete Equipment", location: "Waterloo", quantity: 5, category: "Heavy", image_name: "concrete_equipment.jpg",
                                  description: "This is a complete system for the site-prep, placing, finishing and paving of all types of concrete."},
                                {name: "Circular Saw", location: "Hamilton", quantity: 5, category: "Light", image_name: "circular_saw.jpg",
                                  description: "This saw continues the long tradition of quality, rugged durability and consistently exceptional cutting performance. It has been an invaluable tool on America's residential and commercial construction sites for 100 years."},
                                {name: "Chainsaw", location: "Barrie", quantity: 5, category: "Light", image_name: "chain_saw.jpg",
                                  description: "This electrically powered portable saw is perfect for tree felling, limbing, bucking, and pruning to remove branches and foliage. Also suitable for cutting ice."},
                                {name: "Generator Set", location: "Hamilton", quantity: 0, category: "Light", image_name: "generator_set.jpg",
                                  description: "This set uses a diesel engine to generate electrical energy up to 20 hours. Perfect in emergency situations as such as power-supply fail, or for peak-lopping, grid support and export to the power grid."},
                            ])

rate_tables = RateTable.create([
                                   {rentable: rentables[0], hourly: 7.25, daily: 65, weekly: 260},
                                   {rentable: rentables[1], hourly: 5.65, daily: 40, weekly: 154},
                                   {rentable: rentables[2], hourly: 6.25, daily: 50, weekly: 200},
                                   {rentable: rentables[3], hourly: 7.25, daily: 65, weekly: 260},
                                   {rentable: rentables[4], hourly: 5.65, daily: 40, weekly: 154},
                                   {rentable: rentables[5], hourly: 6.25, daily: 43, weekly: 186}
                               ])