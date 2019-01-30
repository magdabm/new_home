# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_1 = User.new(email: "test@test.pl", password: "123456", admin: false)
user_2 = User.new(email: "admin@admin.pl", password: "qwerty", admin: true)
user_1.save
user_2.save

o_1 = Offer.new(title: "Super mieszkanie 2 pokojowe przy AGH", description: "Super mieszkanie 2 pokojowe blisko AGH. W bloku. 2 pokoje 2-osobowe + kuchnia i łazienka. Nowe meble IKEA. Lodówka, pralka. Czynsz 340 zł + prąd i gaz, Internet wg zużycia.", price: 1600, area: 48, phone: 777890098, status: :for_rent)
o_2 = Offer.new(title: "Apartament koło Wawelu, 115 m2", description: "Piękny apartament na ostatnim piętrze kamienicy, przestronny salon z kuchnią, 2 sypialnie, 2 łazienki, garderoba. Mieszkanie posiada pełne wyposażenie. Możliwość zamieszkania z czworonogiem. Tylko dla niepalących.", price: 3500, area: 115, phone: 600765432, status: :for_rent)
o_3 = Offer.new(title: "Kawalerka blisko Wisły, dla pary lub jednej osoby", description: "Odnowiona kawalerka na os. Podwawelskim, 2 piętro, bez widny, umeblowana kuchnia i częściowo łazienka, reszta mebli do uzgodnienia. Czynsz 240 zł + media. Internet z UPC.", price: 1600, area: 35, phone: 599011344, status: :for_rent)
o_4 = Offer.new(title: "Mieszkanie studenckie dla max. 6 osób, blisko do Centrum", description: "Mieszkanie dla studentów, 3 pokoje 2-osobowe, umeblowanie podstawowe - łóżka, biurka, szafy, w kuchni lodówka, stół, w łazience pralka. Mieszkanie posiada piwnicę. Czynsz spółdzielczy 690 zł oraz opłaty za prąd i gaz wg zużycia, oraz za Internet. Najlepiej dla studentek. Umowa na minimum 1 rok. Kaucja w wysokości jednomiesięcznego czynszu.", price: 2200, area: 67, phone: 777111999, status: :for_rent)
o_5 = Offer.new(title: "Klimatyczne mieszkanie w odnowionej kamienicy, Podgórze", description: "Słoneczne mieszkanie w kamienicy w otoczeniu zieleni. 2 pokoje, osobna kuchnia, łazienka. Umeblowane. Brak windy. W okolicy dużo zielonych terenów. Kaucja zwrotna w wysokości czynszu. Uwaga! Mieszkanie dostępne od marca 2019! Dzieci mile widziane.", price: 1900, area: 58, phone: 818919616, status: :for_rent)

user_1.offers << o_1
user_1.offers << o_2
user_1.offers << o_3
user_2.offers << o_4
user_2.offers << o_5

room_1 = Room.new(room: "hall")
room_2 = Room.new(room: "living_room")
room_3 = Room.new(room: "bedroom")
room_4 = Room.new(room: "bedroom_2")
room_5 = Room.new(room: "bedroom_3")
room_6 = Room.new(room: "kitchen")
room_7 = Room.new(room: "bathroom")
room_8 = Room.new(room: "toilet")
room_9 = Room.new(room: "wardrobe")
room_10 = Room.new(room: "pantry")
room_11 = Room.new(room: "mezzanine")
room_12 = Room.new(room: "terrace")
room_13 = Room.new(room: "balcony")
room_14 = Room.new(room: "basement")
room_15 = Room.new(room: "own parking space")
room_16 = Room.new(room: "garden")
room_1.save
room_2.save
room_3.save
room_4.save
room_5.save
room_6.save
room_7.save
room_8.save
room_9.save
room_10.save
room_11.save
room_12.save
room_13.save
room_14.save
room_15.save
room_16.save

o_1.rooms << room_1
o_1.rooms << room_8
o_1.rooms << room_5
o_1.rooms << room_10
o_2.rooms << room_6
o_2.rooms << room_3
o_2.rooms << room_11
o_2.rooms << room_16
o_3.rooms << room_2
o_3.rooms << room_3
o_3.rooms << room_4
o_3.rooms << room_5
o_4.rooms << room_5
o_4.rooms << room_12
o_4.rooms << room_9
o_4.rooms << room_4
o_5.rooms << room_3
o_5.rooms << room_6
o_5.rooms << room_7
o_5.rooms << room_8

d_1 = District.new(name: "Stare Miasto")
d_2 = District.new(name: "Grzegórzki")
d_3 = District.new(name: "Prądnik Czerwony")
d_4 = District.new(name: "Prądnik Biały")
d_5 = District.new(name: "Krowodrza")
d_6 = District.new(name: "Bronowice")
d_7 = District.new(name: "Zwierzyniec")
d_8 = District.new(name: "Dębniki")
d_9 = District.new(name: "Łagiewniki-Borek Fałęcki")
d_10 = District.new(name: "Swoszowice")
d_11 = District.new(name: "Podgórze Duchackie")
d_12 = District.new(name: "Bieżanów-Prokocim")
d_13 = District.new(name: "Podgórze")
d_14 = District.new(name: "Czyżyny")
d_15 = District.new(name: "Mistrzejowice")
d_16 = District.new(name: "Bieńczyce")
d_17 = District.new(name: "Wzgórza Krzesławickie")
d_18 = District.new(name: "Nowa Huta")
d_1.save
d_2.save
d_3.save
d_4.save
d_5.save
d_6.save
d_7.save
d_8.save
d_9.save
d_10.save
d_11.save
d_12.save
d_13.save
d_14.save
d_15.save
d_16.save
d_17.save
d_18.save

o_1.district = d_5
o_2.district = d_1
o_3.district = d_8
o_4.district = d_5
o_5.district = d_13

o_1.save
o_2.save
o_3.save
o_4.save
o_5.save
