# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


o_1 = Offer.new(title: "Super mieszkanie 2 pokojowe przy AGH", description: "Super mieszkanie 2 pokojowe blisko AGH. W bloku. 2 pokoje 2-osobowe + kuchnia i łazienka. Nowe meble IKEA. Lodówka, pralka. Czynsz 340 zł + prąd i gaz, Internet wg zużycia.", price: 1600, area: 48, address: "ul. Czarnowiejska", phone: 777890098)
o_2 = Offer.new(title: "Apartament koło Wawelu, 115 m2", description: "Piękny apartament na ostatnim piętrze kamienicy, przestronny salon z kuchnią, 2 sypialnie, 2 łazienki, garderoba. Mieszkanie posiada pełne wyposażenie. Możliwość zamieszkania z czworonogiem. Tylko dla niepalących.", price: 3500, area: 115, address: "ul. Straszewskiego", phone: 600765432)
o_3 = Offer.new(title: "Kawalerka blisko Wisły, dla pary lub jednej osoby", description: "Odnowiona kawalerka na os. Podwawelskim, 2 piętro, bez widny, umeblowana kuchnia i częściowo łazienka, reszta mebli do uzgodnienia. Czynsz 240 zł + media. Internet z UPC.", price: 1600, area: 35, address: "os. Podwawelskie", phone: 599011344)
o_4 = Offer.new(title: "Mieszkanie studenckie dla max. 6 osób, blisko do C...", description: "Mieszkanie dla studentów, 3 pokoje 2-osobowe, umeblowanie podstawowe - łóżka, biurka, szafy, w kuchni lodówka, stół, w łazience pralka. Mieszkanie posiada piwnicę. Czynsz spółdzielczy 690 zł oraz opłaty za prąd i gaz wg zużycia, oraz za Internet. Najlepiej dla studentek. Umowa na minimum 1 rok. Kaucja w wysokości jednomiesięcznego czynszu.", price: 2200, area: 67, address: "ul. Królewska", phone: 777111999)
o_5 = Offer.new(title: "Klimatyczne mieszkanie w odnowionej kamienicy, Pod...", description: "Słoneczne mieszkanie w kamienicy w otoczeniu zieleni. 2 pokoje, osobna kuchnia, łazienka. Umeblowane. Brak windy. W okolicy dużo zielonych terenów. Kaucja zwrotna w wysokości czynszu. Uwaga! Mieszkanie dostępne od marca 2019! Dzieci mile widziane.", price: 1900, area: 58, address: "ul. Kacza", phone: 818919616)
o_1.save
o_2.save
o_3.save
o_4.save
o_5.save

user_1 = User.new(email: "test@test.pl", password: "123456", admin: false)
user_2 = User.new(email: "admin@admin.pl", password: "qwerty", admin: true)
user_1.save
user_2.save

user_1.offers << o_1
user_1.offers << o_2
user_1.offers << o_3
user_2.offers << o_4
user_2.offers << o_5
