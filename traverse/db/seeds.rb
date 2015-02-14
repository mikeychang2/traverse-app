# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

trip = Trip.create(title: "Rome")
event1 = trip.events.create(title: "Bar", date: "2010-01-10", content: "bla")
event2 = trip.events.create(title: "restaurant", date: "2010-01-11", content: "ble")

event1.photos.create(url: "jksdbkj")
event2.photos.create(url: "jksdbkj")

event1.tags.create(name: "bars")
event1.tags.create(name: "restaurant")
event2.tags.create(name: "restaurant")
event2.tags.create(name: "beach")

place1 = Place.create(yelp_link: "A", address: "kjdfbk", event_id: event1.id)
place2 = Place.create(yelp_link: "C", address: "kjdfbk", event_id: event2.id)




trip2 = Trip.create(title: "Thailand")
event2_1 = trip2.events.create(title: "Bar", date: "2010-01-10", content: "bla")
event2_2 = trip2.events.create(title: "restaurant", date: "2010-01-11", content: "ble")

event2_1.photos.create(url: "jksdbkj")
event2_2.photos.create(url: "jksdbkj")

event2_1.tags.create(name: "bars")
event2_1.tags.create(name: "restaurant")
event2_2.tags.create(name: "restaurant")
event2_2.tags.create(name: "beach")

place2_1 = Place.create(yelp_link: "A", address: "kjdfbk", event_id: event2_1.id)
place2_2 = Place.create(yelp_link: "C", address: "kjdfbk", event_id: event2_2.id)
