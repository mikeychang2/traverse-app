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

Tag.create(name: "bars", photo_url: "https://stocksnap.io/img-thumbs/960w/4178415E1A.jpg", default_photo: true)

Tag.create(name: "restaurants", photo_url: "http://media-cdn.tripadvisor.com/media/photo-s/02/b5/8d/55/simge-restaurant.jpg", default_photo: true)

Tag.create(name: "cafe", photo_url: "https://unsplash.imgix.net/photo-1418479631014-8cbf89db3431?fit=crop&fm=jpg&h=700&q=75&w=1050", default_photo: true)

Tag.create(name: "parks", photo_url: "https://stocksnap.io/img-thumbs/280h/47C952DE09.jpg", default_photo: true)

Tag.create(name: "nature", photo_url: "https://stocksnap.io/img-thumbs/280h/5AYVZQIA71.jpg", default_photo: true)

Tag.create(name: "landmarks", photo_url: "https://stocksnap.io/img-thumbs/280h/K3QVV6V7UP.jpg", default_photo: true)

Tag.create(name: "hikes", photo_url: "http://argyruntum.com/wp-content/uploads/2014/03/hiking.jpg", default_photo: true)

Tag.create(name: "excursions", photo_url: "https://unsplash.imgix.net/photo-1414924347000-9823c338079b?fit=crop&fm=jpg&h=700&q=75&w=1050", default_photo: true)

Tag.create(name: "festivals", photo_url: "https://ununsplash.imgix.net/46/unsplash_52c319226cefb_1.JPG?fit=crop&fm=jpg&h=700&q=75&w=1050", default_photo: true)

Tag.create(name: "tours", photo_url: "https://unsplash.imgix.net/45/eDLHCtzRR0yfFtU0BQar_sylwiabartyzel_themap.jpg?fit=crop&fm=jpg&h=700&q=75&w=1050", default_photo: true)

Tag.create(name: "museums", photo_url: "http://travelinnate.com/wp-content/uploads/2014/05/Louvre-Museum-1.jpg", default_photo: true)

Tag.create(name: "beaches", photo_url: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRyyzdIeiPHx76BMCxTg5rGmlq-WGTjoPOlgotGMKXeduRB4f0Y", default_photo: true)

Tag.create(name: "clubs", photo_url: "http://www.absoluteability.com/wp-content/uploads/2013/08/club2.png", default_photo: true)

Tag.create(name: "shopping", photo_url: "http://blog.virtuoso.com/wp-content/uploads/2013/11/shopping_paris.jpg", default_photo: true)

Tag.create(name: "street-food", photo_url: "http://www-mobilefoodnews-com.zippykid.netdna-cdn.com/wp-content/uploads/2013/05/SF-T1-food-trucks-great-lawn.jpg", default_photo: true)

Tag.create(name: "sports", photo_url: "http://cache3.asset-cache.net/xt/118995713.jpg?v=1&g=fs1%7C0%7CPC%7C95%7C713&s=1", default_photo: true)

Tag.create(name: "cheap", photo_url: "http://www.bakersfieldinvestmentclub.com/hs-fs/hub/429779/file-2037114742-jpg/Waystosavemoney.jpg", default_photo: true)

Tag.create(name: "expensive", photo_url: "http://forevertwentysomethings.com/wp-content/uploads/2011/08/saving-money-in-college.jpg", default_photo: true)

