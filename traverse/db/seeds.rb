#  TAGS

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

# TEAM APP
user = User.create(name: "Team Traverse", username: "Traverse", email: "traverse.app.dbc@gmail.com", password: "123")
trip = Trip.create(title: "Traverse", user_id: user.id, photo: 'http://i26.photobucket.com/albums/c150/JohnsonCassandra/2015-DBC/image_1.jpeg')


# TEAM CONCEPT
concept = Event.create(title: "Concept", date: 20150220, content: "Your friend wants recommendations for the best restaurants in Rio.  You loved that one place with the amazing empanadas...what was it called again?  Traverse is your travel journal: save events, photos, and locations to preserve your memories and share with friends.", trip_id: trip.id)
bestever = Tag.create(name: "best project ever")
EventTag.create(trip_id: trip.id, event_id: concept.id, tag_id: bestever.id)
Photo.create(event_id: concept.id, url: "http://i26.photobucket.com/albums/c150/JohnsonCassandra/2015-DBC/image_1.jpeg")
concept_place = Place.create(event_id: concept.id, yelp_link: "http://www.yelp.com/biz/dev-bootcamp-san-francisco", address: "633 Folsom, San Francisco, CA 94107, United States", name: "Dev Bootcamp", photo_url: "http://media.npr.org/assets/img/2014/12/15/20141210_dbcsf_169_l_slide-6c0f00c3ff71eec42ce448854c367a80fbe404aa-s1100-c15.jpg", coordinates: "37.784755, -122.397230")

# TEAM ABOUT THE TEAM
team = Event.create(title: "Team", date: 20150220, content: "Meet team Traverse: Michael Chang, Karen Lo, Vivian Fialho, Leonard Bui, & CJ Johnson.", trip_id: trip.id)
teamtag = Tag.create(name: "team")
EventTag.create(trip_id: trip.id, event_id: team.id, tag_id: teamtag.id)

Photo.create(event_id: team.id, url: 'http://i26.photobucket.com/albums/c150/JohnsonCassandra/2015-DBC/image5.jpg')
Photo.create(event_id: team.id, url: 'http://i26.photobucket.com/albums/c150/JohnsonCassandra/2015-DBC/image.jpeg')

team_place = Place.create(event_id: team.id, yelp_link: "http://www.yelp.com/biz/dev-bootcamp-san-francisco", address: "633 Folsom, San Francisco, CA 94107, United States", name: "Dev Bootcamp", photo_url: "http://media.npr.org/assets/img/2014/12/15/20141210_dbcsf_169_l_slide-6c0f00c3ff71eec42ce448854c367a80fbe404aa-s1100-c15.jpg", coordinates: "37.784755, -122.397230")




# TEAM DYNAMIC
team_dynamic = Event.create(title: "Team Dynamic", date: 20150220, content: "Much Love!  Stand-ups every 3 hours.  Team lunches.  Core hour agreements.  Pairing & solo opportunities.  Frequent commits & merges. Communciation was number 1!", trip_id: trip.id)
dynamtag = Tag.create(name: "team dynamics")
EventTag.create(trip_id: trip.id, event_id: team_dynamic.id, tag_id: dynamtag.id)
Photo.create(event_id: team_dynamic.id, url: 'http://i26.photobucket.com/albums/c150/JohnsonCassandra/2015-DBC/image_3.jpeg')
Photo.create(event_id: team_dynamic.id, url: 'http://i26.photobucket.com/albums/c150/JohnsonCassandra/2015-DBC/image1.jpg')



dynam_place = Place.create(event_id: team_dynamic.id, yelp_link: "http://www.yelp.com/biz/hrd-coffee-shop-san-francisco-2", address: "521A 3rd Street, San Francisco, CA 94107", name: "HRD Cafe", photo_url: "http://s3-media2.fl.yelpcdn.com/bphoto/9eAc29FyN6SPUNzXLQhs5Q/ls.jpg", coordinates: "37.781340, -122.395212")

# TEAM TECHNOLOGIES
technologies = Event.create(title: "Technologies", date: 20150220, content: "We used Rails-API for our back end with a front end Angular.js, Node.js & Express.js stack.  APIs: Google maps, Yelp, FB, Instagram.", trip_id: trip.id)
techtag = Tag.create(name: "technologies")
EventTag.create(trip_id: trip.id, event_id: technologies.id, tag_id: techtag.id)
Photo.create(event_id: technologies.id, url: "http://media.mediatemple.netdna-cdn.com/wp-content/uploads/2011/04/bf_rails.jpg")
Photo.create(event_id: technologies.id, url: "http://www.freelance-webexpert.fr/wp-content/uploads/2014/03/angularjs.png")
Photo.create(event_id: technologies.id, url: "https://i.cloudup.com/zfY6lL7eFa-3000x3000.png")
Photo.create(event_id: technologies.id, url: "http://calebmadrigal.com/images/nodejs-logo.png")
Photo.create(event_id: technologies.id, url: "http://qph.is.quoracdn.net/main-thumb-t-27685-200-SbPQqox7s7e707NeqUeSo5ri3qjwIQiV.jpeg")
Photo.create(event_id: technologies.id, url: "http://i26.photobucket.com/albums/c150/JohnsonCassandra/2015-DBC/10968501_330473477163238_7413985143530983507_n.jpg")
Photo.create(event_id: technologies.id, url: "http://www.ironpaper.com/webintel/wp-content/uploads/2013/09/instagram-api.png")
Photo.create(event_id: technologies.id, url: "http://socialwifiinc.com/wp-content/uploads/2014/09/facebook-api.jpg")
Photo.create(event_id: technologies.id, url: "http://i3.kym-cdn.com/entries/icons/facebook/000/000/184/Spaghetti_cat.JPG")



success_place = Place.create(event_id: technologies.id, yelp_link: "http://www.yelp.com/biz/dev-bootcamp-san-francisco", address: "633 Folsom, San Francisco, CA 94107, United States", name: "Dev Bootcamp", photo_url: "http://media.npr.org/assets/img/2014/12/15/20141210_dbcsf_169_l_slide-6c0f00c3ff71eec42ce448854c367a80fbe404aa-s1100-c15.jpg", coordinates: "37.784755, -122.397230")



#  SUCCESS

success = Event.create(title: "Successes", date: 20150220, content: "Git.  CSS animations.  3rd party APIs.  Authentication.  New front-end technologies. Team commitment.", trip_id: trip.id)
successtag = Tag.create(name: "successes")
EventTag.create(trip_id: trip.id, event_id: success.id, tag_id: successtag.id)
success_place = Place.create(event_id: success.id, yelp_link: "http://www.yelp.com/biz/dev-bootcamp-san-francisco", address: "633 Folsom, San Francisco, CA 94107, United States", name: "Dev Bootcamp", photo_url: "http://media.npr.org/assets/img/2014/12/15/20141210_dbcsf_169_l_slide-6c0f00c3ff71eec42ce448854c367a80fbe404aa-s1100-c15.jpg", coordinates: "37.784755, -122.397230")

Photo.create(event_id: success.id, url: 'http://i26.photobucket.com/albums/c150/JohnsonCassandra/2015-DBC/image_2.jpeg')

Photo.create(event_id: success.id, url: 'http://i26.photobucket.com/albums/c150/JohnsonCassandra/2015-DBC/image6.jpg
')
Photo.create(event_id: success.id, url: 'http://i26.photobucket.com/albums/c150/JohnsonCassandra/2015-DBC/image3.jpg
')


#  HURDLES
hurdles = Event.create(title: "Stretches", date: 20150220, content: "Flickr.  Mobile.  Sharing with friends. Tripit API.  Events by Day.", trip_id: trip.id)
hurdletag = Tag.create(name: "hurdles")
EventTag.create(trip_id: trip.id, event_id: hurdles.id, tag_id: hurdletag.id)
hurdle_place = Place.create(event_id: hurdles.id, yelp_link: "http://www.yelp.com/biz/dev-bootcamp-san-francisco", address: "633 Folsom, San Francisco, CA 94107, United States", name: "Dev Bootcamp", photo_url: "http://media.npr.org/assets/img/2014/12/15/20141210_dbcsf_169_l_slide-6c0f00c3ff71eec42ce448854c367a80fbe404aa-s1100-c15.jpg", coordinates: "37.784755, -122.397230")
Photo.create(event_id: hurdles.id, url: 'http://tweakyourbiz.com/sales/files/Sales-Presentations-That-Fall-At-The-Final-Hurdle.jpg')
Photo.create(event_id: hurdles.id, url: 'http://i26.photobucket.com/albums/c150/JohnsonCassandra/2015-DBC/image4.jpg')

# FAKE TRIPS - KAUAI


kauai = Trip.create(title: "Kauai", user_id: user.id, photo: 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSyw_aXaHZBkeDKvPE0Rb3SS-9G85hZMNX3XUUgjOHfTeL-v0sn')
napali = Event.create(title: "Hiking the Na Pali coast", date: 20141020, content: "My sister and I had the privilege of being on Captain Kauai and crews 'maiden' voyage. We chose the afternoon option with dinner which included a perfect sunset. The crew were such fun! Almost like family. Great senses of humor, very laid back and generous, and their knowledge of Kauai and it's history was amazing. A tour of the Napali Coast is a must do for a trip to Kauai and doing it with this group just made it all that much better. Wonderful experience.", trip_id: kauai.id)
# hike = Tag.where(name: "hike").first
nature = Tag.where(name: "nature").first
# EventTag.create(event_id: napali.id, trip_id: kauai.id, tag_id: hike.id)
EventTag.create(event_id: napali.id, trip_id: kauai.id, tag_id: nature.id)
Photo.create(event_id: napali.id, url: "http://upload.wikimedia.org/wikipedia/commons/0/0f/Na_pali.jpg")
Photo.create(event_id: napali.id, url: "http://www.olofcarmel.com/data/photos/1122_1Last_Wave_Napali_Coast.jpg")
Photo.create(event_id: napali.id, url: "http://www.napalicoastmagazine.com/wp-content/uploads/2013/01/kayak-700x466.jpg")

kauai_place = Place.create(event_id: napali.id, yelp_link: "http://www.yelp.com/biz/kalalau-trail-hanalei?osq=na+pali+trail", address: "End of Hwy 56, Ha'ena State Park, Kauai, Hanalei, HI 96714", name: "Kalalau Trail", photo_url: "http://s3-media1.fl.yelpcdn.com/bphoto/jEczczG2SjrldhvEUP6pwg/ls.jpg", coordinates: "22.195942, -159.620769")


helicopter = Event.create(title: "Helicopter Ride", date: 20141021, content: "Our first copter tour ever! We knew we wanted the best, so Blue Hawaiian was our only choice. We had a morning flight over a beautifully clear Kauai. Our pilot and guide was super. Flying close to falls, landslides, cliffs... not scary at all. Within a few seconds from the start of the flight, we were at ease and thrilled. Gorgeous views make this island the best, in my opinion. Well worth the money.", trip_id: kauai.id)

tours = Tag.where(name: "tours").first
excursions = Tag.where(name: "excursions").first

EventTag.create(event_id: helicopter.id, trip_id: kauai.id, tag_id: tours.id)
EventTag.create(event_id: helicopter.id, trip_id: kauai.id, tag_id: excursions.id)
EventTag.create(event_id: helicopter.id, trip_id: kauai.id, tag_id: nature.id)

Photo.create(event_id: helicopter.id, url: "http://www.aloha-hawaii.com/wp-content/uploads/2010/01/kauai-helicopter.jpg")
Photo.create(event_id: helicopter.id, url: "https://c2.staticflickr.com/8/7112/6948212314_798a3173c5_z.jpg")
Photo.create(event_id: helicopter.id, url: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcS2q7cVdGSvBdSSQxOX-lISMC16KymcDC8cK3f5wKXZSgH2H6Z8")


helicopter_place = Place.create(event_id: helicopter.id, yelp_link: "http://www.yelp.com/biz/blue-hawaiian-helicopters-lihue", address: "3501 Rice St., Ste 114, Lihue, HI 96766", name: "Blue Hawaiian Helicopters", photo_url: "http://s3-media3.fl.yelpcdn.com/bphoto/9l9kuh1P6NVOOOJMiq0FKw/ls.jpg", coordinates: "21.984628, -159.343450")



luau = Event.create(title: "Luau", date: 20141020, content: "I booked the Hawaii Alive Luau online prior to our departure, easy to book and guarantee your seats ahead of time. The show is smaller than the Polynesian Culture Center in Oahu, but it was still a nice way to spend an evening with my brother. The music and dancers were all great!!!", trip_id: kauai.id)

festivals = Tag.where(name: "festivals").first
festivals = Tag.where(name: "nature").first

EventTag.create(event_id: luau.id, trip_id: kauai.id, tag_id: festivals.id)
funtag = Tag.create(name: "Fun")
EventTag.create(trip_id: kauai.id, event_id: luau.id, tag_id: funtag.id)
Photo.create(event_id: luau.id, url: "http://www.hawaiilifeofluxury.com/images/grand_hyatt_kauai_luau_sunfire.jpg")
Photo.create(event_id: luau.id, url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRXy3OekskSIbpu24EdTXqajDB82xvKMIVt3cKJHsIEjGwxOwbcGQ")
Photo.create(event_id: luau.id, url: "http://royalcoconutcoast.com/wp-content/uploads/2012/08/kauai-luau.jpg")


luau_place = Place.create(event_id: luau.id, yelp_link: "http://www.yelp.com/biz/hawaii-alive-luau-dinner-and-show-lihue", address: "3610 Rice St., Lihue, HI 96766", name: "Hawaii Alive Luau", photo_url: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQHUN7QwUjat_KvoOH5dzK_Rebrfgefojenq3ZOcKZmR8i7jcK1Bg", coordinates: "21.984628, -159.343450")


# FAKE TRIP II

london = Trip.create(title: "London", user_id: user.id, photo: 'http://thedestinationcenter.com/images/tourimages/02553700_1204243751.jpg')
pubcrawl = Event.create(title: "Old-Timey Pub", date: 20141020, content: "We had the privilege of spending the evening of my Husband's birthday with Jane, and it was delightful! She is engaging and knowledgeable, and we learned about the Pubs, the beer and the local attractions. We had a marvelous experience, and would recommend this tour to anyone interested!", trip_id: london.id)

bars = Tag.where(name: "bars").first
cheap = Tag.where(name: "cheap").first

EventTag.create(event_id: pubcrawl.id, trip_id: london.id, tag_id: bars.id)
EventTag.create(event_id: pubcrawl.id, trip_id: london.id, tag_id: cheap.id)
Photo.create(event_id: pubcrawl.id, url: "http://beerlens.com/wp-content/uploads/2010/12/IMG_3765_2048x1366.jpg")
Photo.create(event_id: pubcrawl.id, url: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSsXD73yQsRKxCJD2uLMGDtkaQaF_lrOlGFlknu5-39qHkK2RUr")
Photo.create(event_id: pubcrawl.id, url: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSLBMBIv0Yib8vLxillKgSom0ntsZiIKK401YQei-RZb6vmyfMI0Q")

london_place = Place.create(event_id: pubcrawl.id, yelp_link: "http://www.yelp.com/biz/the-harp-london-2", address: "47 Chandos Place, Covent Garden, London WC2N 4HS, United Kingdom, Covent Garden, Strand", name: "The Harp", photo_url: "http://s3-media3.fl.yelpcdn.com/bphoto/8TInv80T_osD9UmdZ3mt3A/ls.jpg", coordinates: "51.509764, -0.126049")


jack = Event.create(title: "Jack the Ripper Tour", date: 20141021, content: "I can't recommend this tour enough! From the costumed guide through the winding and eerie streets of Jacks old stomping ground to his ability to talk for nearly 2 hours. The guide expertly transported us back in time to the squalor of Victorian London, painting vivid descriptions if the events of The late 1800's. The Ripper vision was a nice touch that really brought the guides words to life. If your in London do this tour !", trip_id: london.id)

landmarks = Tag.where(name: "landmarks").first

EventTag.create(event_id: jack.id, trip_id: london.id, tag_id: tours.id)
EventTag.create(event_id: jack.id, trip_id: london.id, tag_id: landmarks.id)
Photo.create(event_id: jack.id, url: "http://1000things-london.com/wp-content/uploads/2012/03/east-london.jpg
")
Photo.create(event_id: jack.id, url: "http://www.britishtours.com/file/jack-the-ripper-london-alley_5118cd528ee31-600x400.jpg")
Photo.create(event_id: jack.id, url: "http://thedestinationcenter.com/images/tourimages/02553700_1204243751.jpg")




jack_place = Place.create(event_id: jack.id, yelp_link: "http://www.yelp.com/biz/jack-the-ripper-tour-london", address: "Whitechapel High Street, London E1 7PT, United Kingdom, Aldgate, Petticoat Lane, Whitechapel", name: "RipperVision Jack the Ripper Tour", photo_url: "http://s3-media2.fl.yelpcdn.com/bphoto/-_SFt2LFUQfL5jnebn7ZeQ/ls.jpg", coordinates: "51.516987, -0.072229")



bmuseum = Event.create(title: "British Museum", date: 20141020, content: "Where do i start! Been there a thousand times and still not seen everything..really love the whole cultural scene with such a rich history spanning thousands of years of man's achievement. The Museum is such a vast attraction for anyone who is a student of history, or just curious about past cultures.  I love the way it is laid out which makes getting around very easy. The info provided is top notch and there are tons of material to help you access each room. The food is awesome and varies so there is def a good choice from the menu to stimulate your appetite. I highly recommend this as a cool place to hang out with freinds, especially if your new to London.", trip_id: london.id)

museums = Tag.where(name: "museums").first

EventTag.create(event_id: bmuseum.id, trip_id: london.id, tag_id: museums.id)
EventTag.create(event_id: bmuseum.id, trip_id: london.id, tag_id: cheap.id)

Photo.create(event_id: bmuseum.id, url: "http://s3-media1.fl.yelpcdn.com/bphoto/uuIQlQ4EvVtQTAElKkqdEg/ms.jpg")
Photo.create(event_id: bmuseum.id, url: "http://upload.wikimedia.org/wikipedia/commons/3/3a/British_Museum_from_NE_2.JPG")
Photo.create(event_id: bmuseum.id, url: "http://upload.wikimedia.org/wikipedia/commons/1/19/British_Museum_Great_Court_roof.jpg")


bmuseum_place = Place.create(event_id: bmuseum.id, yelp_link: "http://www.yelp.com/biz/the-british-museum-london-3", address: "Great Russell St, London WC1B 3DG, United Kingdom, Bloomsbury", name: "The British Museum", photo_url: "http://s3-media3.fl.yelpcdn.com/bphoto/Lq7ZkUm7JDZLlMlFXJxr7w/ls.jpg", coordinates: "51.519530, -0.126952")

# 

pub2 = Event.create(title: "Traditional Pub", date: 20141014, content: "Atmosphere, reasonable beers on Tap and a wonderful staff made this place so memorable I had to go twice during my 5 day stay in London. Wait... plus the stunningly huge Burgers with endless amounts of Fries was spot on a filling experience.", trip_id: london.id)

bars = Tag.where(name: "bars").first

EventTag.create(event_id: pub2.id, trip_id: london.id, tag_id: bars.id)
Photo.create(event_id: pub2.id, url: "http://s3-media3.fl.yelpcdn.com/bphoto/4nTEDI8mhvOlgfhjW6MsYg/l.jpg")
Photo.create(event_id: pub2.id, url: "http://s3-media4.fl.yelpcdn.com/bphoto/ZDfhsWUwRae5B25H-_YPUA/l.jpg")
Photo.create(event_id: pub2.id, url: "http://s3-media4.fl.yelpcdn.com/bphoto/mLsGTPTNU-HIY3Fa9xFzNQ/l.jpg")

london_place = Place.create(event_id: pub2.id, yelp_link: "http://www.yelp.com/biz/lord-nelson-london-2", address: "243 Union Street, London SE1 0LR, United Kingdom, Southwark", name: "Lord Nelson", photo_url: "http://s3-media3.fl.yelpcdn.com/bphoto/4nTEDI8mhvOlgfhjW6MsYg/l.jpg", coordinates: "51.503719, -0.102743")


# 
pub3 = Event.create(title: "Pub Crawl", date: 20141017, content: "This was by far our favorite tour we did in London. We loved seeing the historic pubs and Jane was so knowledgeable on not just the pubs and the beer, but on the history of it all. It wasn't just a 'pub crawl' where you go bar to bar drinking, it was a fun walking tour where we learned a lot about the history of the pubs and got to see some historic parts of london. My dad and I both really enjoyed this tour (and we got to drink, so it's really a win-win)! I would definitely recommend, and Jane was absolutely fantastic! Definitely a must-do!", trip_id: london.id)

bars = Tag.where(name: "bars").first

EventTag.create(event_id: pub3.id, trip_id: london.id, tag_id: bars.id)
Photo.create(event_id: pub3.id, url: "http://img.radio.cz/pictures/c/muzea/muzeum_pivo_praha_pipy.jpg")
Photo.create(event_id: pub3.id, url: "http://www.totallylocalvc.com/wp-content/uploads/beer-brendans-pub.jpg")
Photo.create(event_id: pub3.id, url: "http://www.britishbeer.com/images/location_pictures/franklin.jpg")

london_place = Place.create(event_id: pub3.id, yelp_link: "", address: "Holyport Rd, London EC4 , England", name: "London Pub Tours", photo_url: "http://img.radio.cz/pictures/c/muzea/muzeum_pivo_praha_pipy.jpg", coordinates: "51.514580, -0.092867")
# 





# USERS

karen = User.create(name: "Karen", username: "Karen", email: "Karen.app.dbc@gmail.com", password: "123")
mikey = User.create(name: "Mikey", username: "Mikey", email: "Mikey.app.dbc@gmail.com", password: "123")
vivan = User.create(name: "Vivian", username: "Vivian", email: "Vivian.app.dbc@gmail.com", password: "123")
leonard = User.create(name: "Leonard", username: "Leonard", email: "Leonard.app.dbc@gmail.com", password: "123")
cj = User.create(name: "CJ", username: "CJ", email: "CJ.app.dbc@gmail.com", password: "123")

