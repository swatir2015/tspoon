# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

countries = Country.create([{ name: 'France' }, { name: 'India' }, { name: 'Indonesia' }, { name: 'Japan' }, { name: 'Thailand' }])
City.create(name: 'Paris', country_id: 1)
City.create(name: 'Lyon', country_id: 1)
City.create(name: 'Mumbai', country_id: 2)
City.create(name: 'Chennai', country_id: 2)
City.create(name: 'New Delhi', country_id: 2)
City.create(name: 'Ubud', country_id: 3)
City.create(name: 'Kuta', country_id: 3)
City.create(name: 'Tokyo', country_id: 4)
City.create(name: 'Kyoto', country_id: 4)
City.create(name: 'Osaka', country_id: 4)
City.create(name: 'Bangkok', country_id: 5)
meal_types = MealType.create([{ name: 'Lunch'}, { name: 'Dinner' }, { name: 'Either' }])
reservation_types = ReservationType.create([{ name: 'Meal'}, { name: 'Cooking Class' }, { name: 'Market Tour + cooking class + meal' }])
spice_levels = SpiceLevel.create([{ name: 'Mild'}, { name: 'Medium' }, { name: 'Hot' }])