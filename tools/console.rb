require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# b1 = Bakery.new("Dounut Time")
# b2 = Bakery.new("Tim Hortons")
# b3 = Bakery.new("Patiserie Valerie")

# i1 = Ingredient.new("Chocolate", 100)
# i2 = Ingredient.new("Apple", 50)
# i3 = Ingredient.new("Pumpkin Puree", 100)
# i4 = Ingredient.new("Lime", 20)
# i5 = Ingredient.new("Cream", 200)
# i6 = Ingredient.new("Espresso", 10)

# d1 = Dessert.new("Chocolate Cake", b1, i3)
# d2 = Dessert.new("Applie Pie", b1, i3)
# d3 = Dessert.new("Pumpkin Pie", b2, i6)
# d4 = Dessert.new("Key Lime Pie", b2, i5)
# d5 = Dessert.new("Cannoli", b3, i3)
# d6 = Dessert.new("Tiramisu", b3, i6)

robert = Driver.new("Robert")
dylan = Driver.new("Dylan")
george = Driver.new("George")

christa = Passenger.new("Christa")
rose = Passenger.new("Rose")
caitlin = Passenger.new("Caitlin")

ride1 = Ride.new(christa, robert, 3)
ride2 = Ride.new(caitlin, dylan, 10)
ride3 = Ride.new(rose, george, 20)

leo = Actor.new("Leonardo DiCaprio")
miley = Actor.new("Miley Cyrus")
scarlette = Actor.new("Scarlette Johansson")
brad = Actor.new("Brad Pitt")

hannah = Character.new("Hannah Montana", miley)
jack = Character.new("Jack", leo)
jody = Character.new("Jody", scarlette)
bill = Character.new("Bill", brad)
lucy = Character.new("Lucy", scarlette)
julia = Character.new("Julia", miley)
hailey = Character.new("Hailey", miley)
kevin = Character.new("Kevin", brad)

hannah_montana = Show.new("Hannah Montana")
greys = Show.new("Grey's Anatomy")
kondo = Show.new("Marie Kondo")
lost_show = Show.new("Lost")

godfather = Movie.new("The Godfather")
jurassic = Movie.new("Jurassic Park")
gatsby = Movie.new("The Great Gatsby")
lost_movie = Movie.new("Lost")

godfather1 = MovieCharacter.new(godfather, jack)
godfather2 = MovieCharacter.new(godfather, hailey)
godfather3 = MovieCharacter.new(godfather, bill)
jurassicp = MovieCharacter.new(jurassic, jack)
jurassic1 = MovieCharacter.new(jurassic, bill)
jurassic2 = MovieCharacter.new(jurassic, hannah)
jurassic3 = MovieCharacter.new(jurassic, lucy)
lost1 = MovieCharacter.new(lost_movie, bill)
lost2 = MovieCharacter.new(lost_movie, hannah)
lost3 = MovieCharacter.new(lost_movie, jody)
lost4 = MovieCharacter.new(lost_movie, jack)
gatsby1 = MovieCharacter.new(gatsby, hannah)
gastby2 = MovieCharacter.new(gatsby, julia)
gatsby3 = MovieCharacter.new(gatsby, kevin)

hannah_montana1 = ShowCharacter.new(hannah_montana, hannah)
hannah_montana2 = ShowCharacter.new(hannah_montana, bill)
hannah_montana3 = ShowCharacter.new(hannah_montana, jack)
greys1 = ShowCharacter.new(greys, jack)
greys2 = ShowCharacter.new(greys, lucy)
greys3 = ShowCharacter.new(greys, jody)
kondo1 = ShowCharacter.new(kondo, hailey)
kondo2 = ShowCharacter.new(kondo, lucy)
kondo3 = ShowCharacter.new(kondo, bill)
lost1 = ShowCharacter.new(lost_show, bill)
lost2 = ShowCharacter.new(lost_show, hannah)
lost3 = ShowCharacter.new(lost_show, jody)
lost4 = ShowCharacter.new(lost_show, jack)



Pry.start

