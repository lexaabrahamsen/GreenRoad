# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Place.create(name: "Lincoln Recycling Service", address: "4711 Dell Ave #2815, North Bergen, NJ 07047", distance: "17.6mi", hours: "Friday 5AM–5PM Saturday 7AM–12PM Sunday	Closed Monday 5AM–5PM Tuesday 5AM–5PM Wednesday 5AM–5PM Thursday 5AM–5PM")
Place.create(name: "ecoATM", address: "700 Paramus Rd, Paramus, NJ 07652", distance: "2.3mi", hours: "Friday 8AM–11:30PM Saturday 8AM–11:30PM Sunday Closed Monday 8AM–11:30PM Tuesday 8AM–11:30PM Wednesday 8AM–11:30PM Thursday 8AM–11:30PM")
Place.create(name: "Fair Lawn Recycling Center", address: "20-05 Saddle River Rd, Fair Lawn, NJ 07410", distance: "4.9mi", hours: "Friday 7AM-3:15PM Saturday 9AM–12:45PM Sunday 12-3:45PM Monday 7AM-3:15PM Tuesday 7AM-3:15PM Wednesday 7AM-3:15PM Thursday 7AM-3:15PM")
Place.create(name: "Tenafly Recycling Center", address: "153 Grove St, Tenafly, NJ 07670", distance: "5.4mi", hours: "Friday 7:45AM-3PM Saturday 7:45AM-3PM Sunday 7:45AM-3PM Monday 7:45AM-3PM Tuesday Closed Wednesday 1-3PM Thursday 1-3PM")
Place.create(name: "Glen Rock Recycling Center", address: "350 Doremus Ave, Glen Rock, NJ 07452", distance: "5.6mi", hours: "Friday 7:30AM-3:30PM Saturday 8AM-5PM Sunday 12-5PM Monday 7AM-3:30PM Tuesday Closed Wednesday Closed Thursday 7:30AM-3:30PM")
Place.create(name: "Hawthorne Recycling Center", address: "Ryerson Way, Hawthorne, NJ 07506", distance: "9.7mi", hours: "Friday 8:30-4PM Saturday 8:30AM-4PM Sunday 11AM-3PM Monday 8:30AM-4PM Tuesday 8:30AM-4PM Wednesday 8:30AM-4PM Thursday 8:30AM-4PM")


Pickup.create(pickup_days: "Mon")
Pickup.create(pickup_days: "Tue")
Pickup.create(pickup_days: "Wed")
Pickup.create(pickup_days: "Thu")
Pickup.create(pickup_days: "Fri")