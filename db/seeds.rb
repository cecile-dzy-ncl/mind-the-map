# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database of theme pois...'
ThemePoi.destroy_all
puts 'Cleaning database of themes...'
Theme.destroy_all
puts 'Cleaning database of cities...'
City.destroy_all
puts 'Cleaning database of pois...'
Poi.destroy_all
puts 'Cleaning database of answers...'
Answer.destroy_all
puts 'Cleaning database of games...'
Game.destroy_all
puts 'Cleaning database of users...'
User.destroy_all

# User seed
puts 'generating users with password 123456 '
jeremy = User.new(email: "jeremy.jouffroy@gmail.com",
  password: "123456",
  username: "jerem",
  first_name: "Jeremy",
  last_name: "Jouffroy",
  address: "26 rue Edouard Vaillant, 93140 Bondy, France")
jeremy.remote_photo_url = "https://res.cloudinary.com/cecile-dzy-ncl/image/upload/v1543927010/MtM/jeremy.jpg"
jeremy.save

benoit = User.new(email: "benoitdelest@gmail.com",
  password: "123456",
  username: "ben",
  first_name: "Benoit",
  last_name: "Delest",
  address: "3 rue de la Jonquiere, 75017 Paris, France")
benoit.remote_photo_url = "https://res.cloudinary.com/cecile-dzy-ncl/image/upload/v1543926966/MtM/benoit.png"
benoit.save!

cecile = User.new(email: "cecile.dezy@gmail.com",
  password: "123456",
  username: "cec",
  first_name: "Cécile",
  last_name: "Dezy",
  address: "6 rue Euryale Dehaynin, 75019 Paris, France ")
cecile.remote_photo_url = "https://res.cloudinary.com/cecile-dzy-ncl/image/upload/v1543927335/MtM/cecile.jpg"
cecile.save!

chris = User.new(email: "christophe@noujaim.com",
  password: "123456",
  username: "chris",
  first_name: "Christophe",
  last_name: "Noujaim",
  address: "20 Boulevard de Clichy, 75018 Paris, France")
chris.remote_photo_url = "https://res.cloudinary.com/cecile-dzy-ncl/image/upload/v1543927010/MtM/jeremy.jpg"
chris.save!

puts "--> 4 users have been created!"

# Cities seed
puts 'generating cities'

paris = City.new(name: 'Paris')
paris.remote_photo_url = "https://res.cloudinary.com/cecile-dzy-ncl/image/upload/v1543927598/MtM/paris.jpg"
paris.save!

london = City.new(name: 'London')
london.remote_photo_url = "https://res.cloudinary.com/cecile-dzy-ncl/image/upload/v1543927737/MtM/london.jpg"
london.save!

berlin = City.new(name: 'Berlin')
berlin.remote_photo_url = "https://res.cloudinary.com/cecile-dzy-ncl/image/upload/v1543927894/MtM/berlin.jpg"
berlin.save!

puts "--> 3 cities have been created!"

# Themes seed
puts "generating themes"
monuments_paris = Theme.new(name: "Monuments")
monuments_paris.city = paris
monuments_paris.remote_photo_url = "https://res.cloudinary.com/cecile-dzy-ncl/image/upload/v1544020952/MtM/sacre-coeur.jpg"
monuments_paris.save!

districts_paris = Theme.new(name: "Districts")
districts_paris.city = paris
districts_paris.remote_photo_url = "https://res.cloudinary.com/cecile-dzy-ncl/image/upload/v1544094011/MtM/themes_paris/districts_paris.jpg"
districts_paris.save!

places_paris = Theme.new(name: "Places")
places_paris.city = paris
places_paris.remote_photo_url = "https://res.cloudinary.com/cecile-dzy-ncl/image/upload/v1544437736/MtM/Places_POIs/main_places.jpg"
places_paris.save!

shops_paris = Theme.new(name: "Shops")
shops_paris.city = paris
shops_paris.remote_photo_url = "https://res.cloudinary.com/cecile-dzy-ncl/image/upload/v1544094011/MtM/themes_paris/shops_paris.jpg"
shops_paris.save!

restaurants_paris = Theme.new(name: "Restaurants")
restaurants_paris.city = paris
restaurants_paris.remote_photo_url = "https://res.cloudinary.com/cecile-dzy-ncl/image/upload/v1544094011/MtM/themes_paris/restaurants_paris.jpg"
restaurants_paris.save!

concerts_paris = Theme.new(name: "Concerts")
concerts_paris.city = paris
concerts_paris.remote_photo_url = "https://res.cloudinary.com/cecile-dzy-ncl/image/upload/v1544094011/MtM/themes_paris/concerts_paris.jpg"
concerts_paris.save!

parks_paris = Theme.new(name: "Parks")
parks_paris.city = paris
parks_paris.remote_photo_url = "https://res.cloudinary.com/cecile-dzy-ncl/image/upload/v1544094011/MtM/themes_paris/parks_paris.jpg"
parks_paris.save!

museums_paris = Theme.new(name: "Museums")
museums_paris.city = paris
museums_paris.remote_photo_url = "https://res.cloudinary.com/cecile-dzy-ncl/image/upload/v1543929617/MtM/louvre.jpg"
museums_paris.save!

amelie_paris = Theme.new(name: "Find Amelie")
amelie_paris.city = paris
amelie_paris.remote_photo_url = "https://res.cloudinary.com/cecile-dzy-ncl/image/upload/v1544094431/MtM/themes_paris/amelie_paris.jpg"
amelie_paris.save!

puts "--> 9 themes has been created!"


# POI seed
puts "generating pois for monuments_paris"
tour_eiffel = Poi.new(
  name: "Tour Eiffel",
  address: "Champ de Mars, 5 Avenue Anatole France, 75007 Paris, France",
  latitude: 48.858373,
  longitude: 2.29448,
  description: "Constructed from 1887–1889 as the entrance to the 1889 World's Fair, it was initially criticized by some of France's leading artists and intellectuals for its design, but it has become a global cultural icon of France and one of the most recognisable structures in the world. The Eiffel Tower is the most-visited paid monument in the world; 6.91 million people ascended it in 2015.",
  scrapping_uri: "https://en.wikipedia.org/wiki/Eiffel_Tower")
tour_eiffel.remote_photo_url = "https://res.cloudinary.com/cecile-dzy-ncl/image/upload/v1543932568/MtM/eiffel-tower.jpg"
tour_eiffel.save

arc_triomphe = Poi.new(
  name: "Arc de Triomphe",
  address: "Place Charles de Gaulle, 75008 Paris, France",
  latitude: 48.873804,
  longitude: 2.295027,
  description: "The Arc de Triomphe de l'Étoile is one of the most famous monuments in Paris, standing at the western end of the Champs-Élysées at the center of Place Charles de Gaulle, formerly named Place de l'Étoile — the étoile of the juncture formed by its twelve radiating avenues.",
  scrapping_uri: "https://en.wikipedia.org/wiki/Arc_de_Triomphe")
arc_triomphe.remote_photo_url = "https://res.cloudinary.com/cecile-dzy-ncl/image/upload/v1543932861/MtM/arc-triomphe.jpg"
arc_triomphe.save!

palais_garnier = Poi.new(
  name: "Palais Garnier",
  address: "10 Place de l'Opéra, 75009 Paris, France",
  latitude: 48.8708714,
  longitude: 2.3322167999999692,
  description: "The Palais Garnier is a 1,979-seat opera house, which was built from 1861 to 1875 for the Paris Opera. It was called the Salle des Capucines, because of its location on the Boulevard des Capucines in the 9th arrondissement of Paris, but soon became known as the Palais Garnier, in recognition of its opulence and its architect, Charles Garnier.",
  scrapping_uri: "https://en.wikipedia.org/wiki/Palais_Garnier")
palais_garnier.remote_photo_url = "https://res.cloudinary.com/cecile-dzy-ncl/image/upload/v1543933607/MtM/palais-garnier.jpg"
palais_garnier.save!

grand_palais = Poi.new(
  name: "Grand Palais",
  address: "3 Avenue du Général Eisenhower, 75008 Paris",
  latitude: 48.8665777,
  longitude: 2.311635000000024,
  description: "The Grand Palais des Champs-Élysées, commonly known as the Grand Palais (English: Great Palace), is a large historic site, exhibition hall and museum complex located at the Champs-Élysées in the 8th arrondissement of Paris, France",
  scrapping_uri: "https://en.wikipedia.org/wiki/Grand_Palais")
grand_palais.remote_photo_url = "https://res.cloudinary.com/cecile-dzy-ncl/image/upload/v1544020952/MtM/grand-palais.jpg"
grand_palais.save!

notre_dame = Poi.new(
  name: "Cathédrale Notre-Dame de Paris",
  address: "6 Parvis Notre-Dame - Pl. Jean-Paul II, 75004 Paris",
  latitude: 48.85296820000001,
  longitude: 2.3499021000000084,
  description: "Notre-Dame de Paris meaning also known as Notre-Dame Cathedral or simply Notre-Dame, is a medieval Catholic cathedral on the Île de la Cité in the fourth arrondissement of Paris",
  scrapping_uri: "https://en.wikipedia.org/wiki/Notre-Dame_de_Paris")
notre_dame.remote_photo_url = "https://res.cloudinary.com/cecile-dzy-ncl/image/upload/v1544020952/MtM/notre-dame.jpg"
notre_dame.save!

sacre_coeur = Poi.new(
  name: "Basilique du Sacré-Cœur de Montmartre",
  address: "35 Rue du Chevalier de la Barre, 75018 Paris",
  latitude: 48.8870069,
  longitude: 2.342536500000051,
  description: "The Basilica of the Sacred Heart of Paris, commonly known as Sacré-Cœur Basilica and often simply Sacré-Cœur, is a Roman Catholic church and minor basilica, dedicated to the Sacred Heart of Jesus, in Paris, France. ",
  scrapping_uri: "https://en.wikipedia.org/wiki/Sacr%C3%A9-C%C5%93ur,_Paris")
sacre_coeur.remote_photo_url = "https://res.cloudinary.com/cecile-dzy-ncl/image/upload/v1544020952/MtM/sacre-coeur.jpg"
sacre_coeur.save!

hotel_invalides = Poi.new(
  name: "Hôtel des Invalides",
  address: "Rond-Point du Bleuet de France, 75007 Paris",
  latitude: 48.8570915,
  longitude: 2.312811199999942,
  description: "Les Invalides, formally the Hôtel national des Invalides (The National Residence of the Invalids), or also as Hôtel des Invalides, is a complex of buildings in the 7th arrondissement of Paris, France, containing museums and monuments, all relating to the military history of France, as well as a hospital and a retirement home for war veterans, the building's original purpose",
  scrapping_uri: "https://en.wikipedia.org/wiki/Les_Invalides")
hotel_invalides.remote_photo_url = "https://res.cloudinary.com/cecile-dzy-ncl/image/upload/v1544020951/MtM/hotel-invalides.jpg"
hotel_invalides.save!

pantheon = Poi.new(
  name: "Panthéon",
  address: "Place du Panthéon, 75005 Paris",
  latitude: 48.8463836,
  longitude: 2.3449622000000545,
  description: "The Panthéon is a building in the Latin Quarter in Paris, France. It was originally built as a church dedicated to St. Genevieve and to house the reliquary châsse containing her relics but, after many changes, now functions as a secular mausoleum containing the remains of distinguished French citizens",
  scrapping_uri: "https://en.wikipedia.org/wiki/Panth%C3%A9on")
pantheon.remote_photo_url = "https://res.cloudinary.com/cecile-dzy-ncl/image/upload/v1544020953/MtM/pantheon.jpg"
pantheon.save!

louvre = Poi.new(
  name: "Musée du Louvre",
  address: "Rue de Rivoli, 75001 Paris",
  latitude: 48.8606111,
  longitude: 2.3376439999999548,
  description: "The Louvre or the Louvre Museum, is the world's largest art museum and a historic monument in Paris, France. A central landmark of the city, it is located on the Right Bank of the Seine in the city's 1st arrondissement (district or ward). Approximately 38,000 objects from prehistory to the 21st century are exhibited over an area of 72,735 square metres (782,910 square feet). In 2017, the Louvre was the world's most visited art museum, receiving 8.1 million visitors",
  scrapping_uri: "https://en.wikipedia.org/wiki/Louvre")
louvre.remote_photo_url = "https://res.cloudinary.com/cecile-dzy-ncl/image/upload/v1543929617/MtM/louvre.jpg"
louvre.save!

palais_luxembourg = Poi.new(
  name: "Palais du Luxembourg",
  address: "15 Rue de Vaugirard, 75291 Paris",
  latitude: 48.84323500000001,
  longitude: 2.3136036999999305,
  description: "The Luxembourg Palace is located at 15 rue de Vaugirard in the 6th arrondissement of Paris. It was originally built (1615–1645) to the designs of the French architect Salomon de Brosse to be the royal residence of the regent Marie de' Medici, mother of Louis XIII of France.",
  scrapping_uri: "https://en.wikipedia.org/wiki/Louvre")
palais_luxembourg.remote_photo_url = "https://res.cloudinary.com/cecile-dzy-ncl/image/upload/v1544020952/MtM/palais_luxembourg.jpg"
palais_luxembourg.save!

puts "--> 10 pois for monuments_paris have been created!"

puts "generating pois for districts_paris"

second_district = Poi.new(
  name: "2nd District",
  address: "121-119 Rue Réaumur, 75002 Paris",
  latitude: 48.868553,
  longitude: 2.342026,
  description: "The 2nd arrondissement of Paris (IIe arrondissement) is one of the 20 arrondissements of the capital city of France. In spoken French, this arrondissement is colloquially referred to as deuxième (second/the second). Also known as Bourse, this arrondissement is located on the right bank of the River Seine. The 2nd arrondissement, together with the adjacent 8th and 9th arrondissements, hosts an important business district, centred on the Paris Opéra, which houses the city's most dense concentration of business activities",
  scrapping_uri: "https://en.wikipedia.org/wiki/2nd_arrondissement_of_Paris")
second_district.remote_photo_url = "https://res.cloudinary.com/cecile-dzy-ncl/image/upload/v1544434635/MtM/District_POIs/second_district.gif"
second_district.save!

ninth_district = Poi.new(
  name: "9th District",
  address: "52 Rue Saint-Georges, 75009 Paris",
  latitude: 48.877628,
  longitude: 2.337366,
  description: "The 9th arrondissement of Paris (IXe arrondissement) called Opéra, is located on the right bank of the River Seine. It contains many places of cultural, historical, and architectural interest, including the Palais Garnier, home to the Paris Opera, Boulevard Haussmann, and its large department stores Galeries Lafayette and Printemps. The arrondissement has many theaters including Folies Bergères, Théatre Mogador and Théatre de Paris. Along with the 2nd and 8th arrondissements, it hosts one of the business centers of Paris, located around the Opéra.",
  scrapping_uri: "https://en.wikipedia.org/wiki/9th_arrondissement_of_Paris")
ninth_district.remote_photo_url = "https://res.cloudinary.com/cecile-dzy-ncl/image/upload/v1544434721/MtM/District_POIs/ninth_district.gif"
ninth_district.save!

sixth_district = Poi.new(
  name: "6th District",
  address: "2-6 Rue Servandoni, 75006 Paris",
  latitude: 48.850641,
  longitude: 2.334805,
  description: "The 6th arrondissement of Paris (VIe arrondissement)is called Luxembourg. It is situated on the left bank of the River Seine. It includes world-famous educational institutions such as the École des Beaux-Arts de Paris and the Académie française, the seat of the French Senate as well as a concentration of some of Paris's most famous monuments such as Saint-Germain Abbey and square, St. Sulpice Church and square, the Pont des Arts, and the Jardin du Luxembourg.",
  scrapping_uri: "https://en.wikipedia.org/wiki/6th_arrondissement_of_Paris")
sixth_district.remote_photo_url = "https://res.cloudinary.com/cecile-dzy-ncl/image/upload/v1544435131/MtM/District_POIs/sixth_district.gif"
sixth_district.save!

eighteenth_district = Poi.new(
  name: "18th District",
  address: "Rue Ordener, 75018 Paris",
  latitude: 48.891761,
  longitude: 2.348130,
  description: "The 18th arrondissement of Paris (XVIIIe arrondissement) known as Butte-Montmartre, is located on the right bank of the River Seine. It is mostly known for hosting the district of Montmartre which contains a hill known for its artistic history, the Bateau-Lavoir where Pablo Picasso, George Braque, and Amedeo Modigliani lived and worked in early 20th century [1], the house of music diva Dalida, the Moulin Rouge cabaret, other historic features, and the prominent Sacré Cœur basilica which sits atop the hill.",
  scrapping_uri: "https://en.wikipedia.org/wiki/18th_arrondissement_of_Paris")
eighteenth_district.remote_photo_url = "https://res.cloudinary.com/cecile-dzy-ncl/image/upload/v1544436295/MtM/District_POIs/eighteenth_district.gif"
eighteenth_district.save!

twentieth_district = Poi.new(
  name: "20th District",
  address: "6 Rue du Capitaine Ferber, 75020 Paris",
  latitude: 48.864617,
  longitude: 2.404677,
  description: "The 20th (or XXe or vingtième) arrondissement of Paris is the last of the consecutively numbered arrondissements of that French capital city. Also known as Ménilmontant, it is located on the right bank of the River Seine and contains the city's cosmopolitan districts Ménilmontant and Belleville. The 20th arrondissement is also internationally known for the Père Lachaise Cemetery where one can find the tombs of many famous artists",
  scrapping_uri: "https://en.wikipedia.org/wiki/20th_arrondissement_of_Paris")
twentieth_district.remote_photo_url = "https://res.cloudinary.com/cecile-dzy-ncl/image/upload/v1544437005/MtM/District_POIs/twentieth_district.gif"
twentieth_district.save!

puts "--> 5 pois have been created for districts_paris !"

puts "generating pois for places_paris"

place_vosges = Poi.new(
  name: "Place des Vosges",
  address: "Place des Vosges, 75004 Paris",
  latitude: 48.85561140000001,
  longitude: 2.3655266000000665,
  description: "The Place des Vosges, originally Place Royale, is the oldest planned square in Paris, France. It is located in the Marais district, and it straddles the dividing-line between the 3rd and 4th arrondissements of Paris. It was a fashionable and expensive square to live in during the 17th and 18th centuries, and one of the central reasons of the fashionable nature of Le Marais for the Parisian nobility.",
  scrapping_uri: "https://en.wikipedia.org/wiki/Place_des_Vosges")
place_vosges.remote_photo_url = "https://res.cloudinary.com/cecile-dzy-ncl/image/upload/v1544437736/MtM/Places_POIs/main_places.jpg"
place_vosges.save!

place_republique = Poi.new(
  name: "Place de la République",
  address: "Place de la République, Paris, France",
  latitude: 48.86739360000001,
  longitude: 2.3634144000000106,
  description: "The Place de la République (formerly known as the Place du Château d'Eau) is a square in Paris, located on the border between the 3rd, 10th and 11th arrondissements. The square has an area of 3.4 ha (8.4 acres).[2] It is named after the French Republic, was called the Place du Château-d'Eau until 1879, and contains a monument which includes a statue of the personification of France, Marianne.",
  scrapping_uri: "https://en.wikipedia.org/wiki/Place_de_la_R%C3%A9publique")
place_republique.remote_photo_url = "https://res.cloudinary.com/cecile-dzy-ncl/image/upload/v1544438384/MtM/Places_POIs/republique_place.jpg"
place_republique.save!

place_concorde = Poi.new(
  name: "Place de la Concorde",
  address: "Place de la Concorde, 75008 Paris, France",
  latitude: 48.8655759,
  longitude: 2.3206268000000136,
  description: "The Place de la Concorde (French pronunciation: ​[plas də la kɔ̃kɔʁd]) is one of the major public squares in Paris, France. Measuring 18.8 acres (7.6 hectares) in area, it is the largest square in the French capital. It is located in the city's eighth arrondissement, at the eastern end of the Champs-Élysées. It was the site of many notable public executions during the French Revolution.",
  scrapping_uri: "https://en.wikipedia.org/wiki/Place_de_la_Concorde")
place_concorde.remote_photo_url = "https://res.cloudinary.com/cecile-dzy-ncl/image/upload/v1544438534/MtM/Places_POIs/concorde_place.jpg"
place_concorde.save!

place_trocadero = Poi.new(
  name: "Place du Trocadero et du 11 Novembre 1918",
  address: "Place du Trocadéro et du 11 Novembre 1918, 75016 Paris, France",
  latitude: 48.8626979,
  longitude: 2.287502600000039,
  description: "The Trocadéro is an area of Paris, France, in the 16th arrondissement, across the Seine from the Eiffel Tower. The hill of the Trocadéro is the hill of Chaillot, a former village.The place was named in honour of the Battle of Trocadero, in which the fortified Isla del Trocadero, in southern Spain, was captured by French forces led by the Duc d'Angoulême, son of the future King of France, Charles X, on August 31, 1823.",
  scrapping_uri: "https://en.wikipedia.org/wiki/Trocad%C3%A9ro")
place_trocadero.remote_photo_url = "https://res.cloudinary.com/cecile-dzy-ncl/image/upload/v1544442517/MtM/Places_POIs/trocadero_place.jpg"
place_trocadero.save!


place_vendome = Poi.new(
  name: "Place Vendome",
  address: "Place Vendôme, 75001 Paris",
  latitude: 48.8675839,
  longitude: 2.3293456000000106,
  description: "Place Vendôme is a square in the 1st arrondissement of Paris, France, located to the north of the Tuileries Gardens and east of the Église de la Madeleine. It is the starting point of the rue de la Paix. Its regular architecture by Jules Hardouin-Mansart and pedimented screens canted across the corners give the rectangular place Vendôme the aspect of an octagon. The original Vendôme Column at the centre of the square was erected by Napoleon I to commemorate the Battle of Austerlitz; it was torn down on 16 May 1871, by decree of the Paris Commune, but subsequently re-erected and remains a prominent feature on the square today.",
  scrapping_uri: "https://en.wikipedia.org/wiki/Place_Vend%C3%B4me")
place_vendome.remote_photo_url = "https://res.cloudinary.com/cecile-dzy-ncl/image/upload/v1544442053/MtM/Places_POIs/vendome_place.jpg"
place_vendome.save!

puts "--> 5 pois have been created for places_paris !"

# ThemePoi seed
puts "generating theme pois for monuments_paris"
tp1 = ThemePoi.new(
  theme_id: monuments_paris.id,
  poi_id: tour_eiffel.id)
tp1.save!

tp2 = ThemePoi.new(
  theme_id: monuments_paris.id,
  poi_id: arc_triomphe.id)
tp2.save!

tp3 = ThemePoi.new(
  theme_id: monuments_paris.id,
  poi_id: palais_garnier.id)
tp3.save!

tp4 = ThemePoi.new(
  theme_id: monuments_paris.id,
  poi_id: grand_palais.id)
tp4.save!

tp5 = ThemePoi.new(
  theme_id: monuments_paris.id,
  poi_id: notre_dame.id)
tp5.save!

tp6 = ThemePoi.new(
  theme_id: monuments_paris.id,
  poi_id: sacre_coeur.id)
tp6.save!

tp7 = ThemePoi.new(
  theme_id: monuments_paris.id,
  poi_id: hotel_invalides.id)
tp7.save!

tp8 = ThemePoi.new(
  theme_id: monuments_paris.id,
  poi_id: pantheon.id)
tp8.save!

tp9 = ThemePoi.new(
  theme_id: monuments_paris.id,
  poi_id: louvre.id)
tp9.save!

tp10 = ThemePoi.new(
  theme_id: monuments_paris.id,
  poi_id: palais_luxembourg.id)
tp10.save!

puts "--> 10 theme pois have been created for monuments_paris!"

puts "--> let's start district_paris!"

tp11 = ThemePoi.new(
  theme_id: districts_paris.id,
  poi_id: second_district.id)
tp11.save!

tp12 = ThemePoi.new(
  theme_id: districts_paris.id,
  poi_id: ninth_district.id)
tp12.save!

tp13 = ThemePoi.new(
  theme_id: districts_paris.id,
  poi_id: sixth_district.id)
tp13.save!

tp14 = ThemePoi.new(
  theme_id: districts_paris.id,
  poi_id: eighteenth_district.id)
tp14.save!

tp15 = ThemePoi.new(
  theme_id: districts_paris.id,
  poi_id: twentieth_district.id)
tp15.save!

puts "--> Ok for district_paris!"

puts "go for places_paris"

tp11 = ThemePoi.new(
  theme_id: places_paris.id,
  poi_id: place_vosges.id)
tp11.save!

tp12 = ThemePoi.new(
  theme_id: places_paris.id,
  poi_id: place_republique.id)
tp12.save!

tp13 = ThemePoi.new(
  theme_id: places_paris.id,
  poi_id: place_concorde.id)
tp13.save!

tp14 = ThemePoi.new(
  theme_id: places_paris.id,
  poi_id: place_trocadero.id)
tp14.save!

tp15 = ThemePoi.new(
  theme_id: places_paris.id,
  poi_id: place_vendome.id)
tp15.save!

puts "--> good for district_paris!"
# puts "go for shops_paris"


# Games seed
puts "generating games"
game1 = Game.new(
  user_one: chris,
  score_one: 1900,
  total_time_one: 44322)
game1.theme = monuments_paris
game1.save!

puts "--> 1 game has been created!"

# Answers seed
puts "generating answers"
answer1 = Answer.new(
  time_to_respond: 4000,
  latitude: 48.868213,
  longitude: 2.30448,
  score: 100)
answer1.game = game1
answer1.poi = tour_eiffel
answer1.user = chris
answer1.save!

answer2 = Answer.new(
  time_to_respond: 2503,
  latitude: 48.873804,
  longitude: 2.295027,
  score: 200)
answer2.game = game1
answer2.poi = arc_triomphe
answer2.user = chris
answer2.save!

answer3 = Answer.new(
  time_to_respond: 33333,
  latitude: 48.871234,
  longitude: 2.332242,
  score: 300)
answer3.game = game1
answer3.poi = palais_garnier
answer3.user = chris
answer3.save!

answer4 = Answer.new(
  time_to_respond: 43333,
  latitude: 48.873423,
  longitude: 2.342536500331,
  score: 400)
answer4.game = game1
answer4.poi = grand_palais
answer4.user = chris
answer4.save!

answer5 = Answer.new(
  time_to_respond: 43533,
  latitude: 48.8712254,
  longitude: 2.334444,
  score: 500)
answer5.game = game1
answer5.poi = notre_dame
answer5.user = chris
answer5.save!

answer6 = Answer.new(
  time_to_respond: 45633,
  latitude: 48.874334,
  longitude: 2.3322222,
  score: 600)
answer6.game = game1
answer6.poi = sacre_coeur
answer6.user = chris
answer6.save!

answer7 = Answer.new(
  time_to_respond: 123233,
  latitude: 48.8713454,
  longitude: 2.3323443,
  score: 700)
answer7.game = game1
answer7.poi = hotel_invalides
answer7.user = chris
answer7.save!

answer8 = Answer.new(
  time_to_respond: 75643,
  latitude: 48.873274,
  longitude: 2.333642,
  score: 800)
answer8.game = game1
answer8.poi = pantheon
answer8.user = chris
answer8.save!

answer9 = Answer.new(
  time_to_respond: 56333,
  latitude: 48.871465,
  longitude: 2.332453,
  score: 900)
answer9.game = game1
answer9.poi = louvre
answer9.user = chris
answer9.save!

answer10 = Answer.new(
  time_to_respond: 347533,
  latitude: 48.874758,
  longitude: 2.3322454,
  score: 1000)
answer10.game = game1
answer10.poi = palais_luxembourg
answer10.user = chris
answer10.save!

puts "--> 10 answers have been created!"


