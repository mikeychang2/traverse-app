# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

michael = User.create(id: 1, name:"Michael", username:"mikeyc", email:"mikey@gmail.com", password:"123")
leonard = User.create(id: 2, name:"Leonard", username:"lennyb", email:"lennyb@gmail.com", password:"123")
cj = User.create(id: 3, name:"CJ", username:"cassyj", email:"cassyj@gmail.com", password:"123")
karen = User.create(id: 4, name:"Karen", username:"klofromtheblock", email:"klofromtheblock@gmail.com", password:"123")
vivian = User.create(id: 5, name:"Vivian", username:"vivify", email:"vivify@gmail.com", password:"123")

colombia = michael.trips.create(title:"Colombia")
event1 = colombia.events.create(title: "Bar", date: "2010-01-10", content: "best night ever. so drunk.")
event2 = colombia.events.create(title: "Restaurant", date: "2010-01-11", content: "delicious as fuck.")

prague = michael.trips.create(title:"Prague")
event3 = prague.events.create(title: "Bar", date: "2010-01-10", content: "best night ever. so drunk.")
event4 = prague.events.create(title: "Restaurant", date: "2010-01-11", content: "delicious as fuck.")

australia = leonard.trips.create(title: "Australia")
event5 = australia.events.create(title: "Bar", date: "2010-01-10", content: "shots. x3.")
event6 = australia.events.create(title: "Restaurant", date: "2010-01-10", content: "YUM!")

dublin = karen.trips.create(title: "dublin")
dublin.events.create(title: "Bar", date: "2010-01-10", content: "beeeeer.")
dublin.events.create(title: "Restaurant", date: "2010-01-10", content: "FOOOOOOOOOOOOD")

india = cj.trips.create(title: "india")
india.events.create(title: "Bar", date: "2010-01-10", content: "drunk in love.")
india.events.create(title: "Restaurant", date: "2010-01-10", content: "lets eat.")

thailand = vivian.trips.create(title: "thailand")
thailand.events.create(title: "Bar", date: "2010-01-10", content: "cervejaaaa bem gelada.")
thailand.events.create(title: "Restaurant", date: "2010-01-10", content: "padthaiz.")

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
