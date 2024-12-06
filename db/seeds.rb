# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Criando o usuário (caso necessário)

# login = User.new(user_name: 'bialopesm', email: 'usuario@exemple.com', password: '123456')
# login.save!
user1 = User.new(user_name: 'bialopesm', email: 'bia@exemple.com', password: 123456)
user1.save!

user2 = User.new(user_name: 'Nominoe-dev', email: 'nominoe@exemple.com', password: 123456)
user2.save!

user3 = User.new(user_name: 'canechiagui', email: 'guilherme@exemple.com', password: 123456)
user3.save!

user4 = User.new(user_name: 'Hurrem24', email: 'jana@exemple.com', password: 123456)
user4.save!

Car.destroy_all

file1 = URI.parse("https://hips.hearstapps.com/hmg-prod/images/challenger3-image3-rbsl-1200x800px-65b2a6e1154db.png").open
car1 = Car.new(
  model: "Tank",
  year: 1970,
  category: "Classic",
  location: "New York",
  color: "Bege",
  rating: 5,
  price_day: 800,
  fuel: "Diesel",
  number_of_seats: 3,
  description: "Good to solve problems with your neighbors.",
  latitude: 40.7128,
  longitude: -74.0060,
  user_id: 1
)

car1.picture.attach(io: file1, filename: "tank.png", content_type: "image/png")
car1.save

file2 = URI.parse("https://cdn.panrotas.com.br/portal-panrotas-statics/media-files-cache/404964/eaf6d1916b5729c66348c9d630682673batmovel1/full/1206,804,1/0/default.jpg").open
car2 = Car.new(
  model: "Batmobile",
  year: 2000,
  category: "Classic",
  location: "Houston",
  color: "Black",
  rating: 5,
  price_day: 300,
  fuel: "Gasoline",
  number_of_seats: 4,
  description: "Good to save Gotham City.",
  latitude: 29.7604,
  longitude: -95.3698,
  user_id: 1
)

car2.picture.attach(io: file2, filename: "batmobile.jpg", content_type: "image/jpg")
car2.save



file3 = URI.parse("https://s2-oglobo.glbimg.com/GVMIDP8JjX6GMAQkBiVdINdSS7c=/0x0:1920x1080/888x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_da025474c0c44edd99332dddb09cabe8/internal_photos/bs/2024/b/g/pt5R6OSTu7vlYAKjq3ew/design-sem-nome.jpg").open
car3 = Car.new(
  model: "Lightning McQueen",
  year: 2010,
  category: "Compact",
  location: "Rio de Janeiro",
  color: "Red",
  rating: 5,
  price_day: 250,
  fuel: "Gasoline",
  number_of_seats: 4,
  description: "The faster car for your races",
  latitude: -22.908333,
  longitude: -43.196388,
  user_id: 2
)

car3.picture.attach(io: file3, filename: "mcqueen.jpg", content_type: "image/jpg")
car3.save



file4 = URI.parse("https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/1963_Herbie.jpg/640px-1963_Herbie.jpg").open
car4 = Car.new(
  model: "Herbie",
  year: 1975,
  category: "Classic",
  location: "São Paulo",
  color: "White",
  rating: 5,
  price_day: 120,
  fuel: "Diesel",
  number_of_seats: 4,
  description: "The best friendly car!",
  latitude: -23.533773,
  longitude: -46.625290,
  user_id: 2
)

car4.picture.attach(io: file4, filename: "herbie.jpg", content_type: "image/jpg")
car4.save


file5 = URI.parse("https://cdn-4.motorsport.com/images/amp/2QzKJ5mY/s1000/rob-garofall-mclaren-mp4-4.jpg").open
car5= Car.new(
  model: "Ayrton Senna",
  year: 1975,
  category: "Classic",
  location: "São Paulo",
  color: "White",
  rating: 5,
  price_day: 350,
  fuel: "Gasoline",
  number_of_seats: 4,
  description: "Feel the emotion of a champion!",
  latitude: -23.533773,
  longitude: -46.625290,
  user_id: 10
)

car5.picture.attach(io: file5, filename: "ayrton_senna.jpg", content_type: "image/jpg")
car5.save


file6 = URI.parse("https://adventure.com/wp-content/uploads/2017/08/frank-albrecht-248114-2-1180x782.jpg").open
car6= Car.new(
  model: "Kombi",
  year: 1995,
  category: "Classic",
  location: "Rio de Janeiro",
  color: "White",
  rating: 5,
  price_day: 200,
  fuel: "Gasoline",
  number_of_seats: 4,
  description: "Go to the beach with your friends!",
  latitude: -22.908333,
  longitude: -43.196388,
  user_id: 10
)

car6.picture.attach(io: file6, filename: "kombi.jpg", content_type: "image/jpg")
car6.save



file7 = URI.parse("https://fraserengineco.com/wp-content/uploads/2020/08/1967-Dodge-Mystery-Machine-500x333.webp").open
car7= Car.new(
  model: "Mystery Machine",
  year: 2008,
  category: "Classic",
  location: "Rio de Janeiro",
  color: "Blue",
  rating: 5,
  price_day: 400,
  fuel: "Gasoline",
  number_of_seats: 4,
  description: "Perfect to solve mysterious problems!",
  latitude: -22.908333,
  longitude: -43.196388,
  user_id: 10
)

car7.picture.attach(io: file7, filename: "machine.jpg", content_type: "image/jpg")
car7.save!



file8 = URI.parse("https://4.bp.blogspot.com/_UjgVks5Z4Rw/TPa1krat3DI/AAAAAAAABgE/x0tvKkgqM8U/s1600/Penelope%2BCharmosa.jpg").open
car8= Car.new(
  model: "Charming Pennelope",
  year: 2010,
  category: "Classic",
  location: "Rio de Janeiro",
  color: "Pink",
  rating: 5,
  price_day: 500,
  fuel: "Gasoline",
  number_of_seats: 4,
  description: "For the beautiful girls!",
  latitude: -22.908333,
  longitude: -43.196388,
  user_id: 10
)

car8.picture.attach(io: file8, filename: "pennelope.jpg", content_type: "image/jpg")
car8.save!


file9 = URI.parse("https://t.ctcdn.com.br/fiRvi97VzupoO8lSjIx1WUm32XM=/1200x675/smart/i578913.jpeg").open
car9 = Car.new(
  model: "DeLorean",
  year: 2010,
  category: "Classic",
  location: "New York",
  color: "Grey",
  rating: 5,
  price_day: 550,
  fuel: "Diesel",
  number_of_seats: 3,
  description: "Good to fix mistakes!",
  latitude: 40.7128,
  longitude: -74.0060,
  user_id: 10
)

car9.picture.attach(io: file9, filename: "future.jpg", content_type: "image/jpg")
car9.save!


file10 = URI.parse("https://krcgtv.com/resources/media2/16x9/4032/986/0x643/90/1fddd8e5-86a1-4c7a-9638-3d5625b629af-IMG_4727.jpg").open
car10 = Car.new(
  model: "Monster truck",
  year: 2024,
  category: "Midsize",
  location: "New York",
  color: "Black",
  rating: 5,
  price_day: 600,
  fuel: "Diesel",
  number_of_seats: 3,
  description: "Use in all the roads!",
  latitude: 40.7128,
  longitude: -74.0060,
  user_id: 10
)

car10.picture.attach(io: file10, filename: "monster.jpg", content_type: "image/jpg")
car10.save!


file11 = URI.parse("https://ww2.kqed.org/app/uploads/sites/10/2023/11/IMG_2896-2048x1365.jpg").open
car11 = Car.new(
  model: "LowRider",
  year: 2006,
  category: "Midsize",
  location: "New York",
  color: "Bordô",
  rating: 5,
  price_day: 480,
  fuel: "Gasoline",
  number_of_seats: 3,
  description: "Enjoy your role in San Andres!",
  latitude: 40.7128,
  longitude: -74.0060,
  user_id: 10
)

car11.picture.attach(io: file11, filename: "gtacar.jpg", content_type: "image/jpg")
car11.save!


file12 = URI.parse("https://i.pinimg.com/736x/32/29/51/322951da43dcd818917ae2b3bec0ca82.jpg").open
car12 = Car.new(
  model: "Mario Kart",
  year: 2006,
  category: "Midsize",
  location: "New York",
  color: "Red",
  rating: 5,
  price_day: 320,
  fuel: "Gasoline",
  number_of_seats: 1,
  description: "Good to win any race!",
  latitude: 40.7128,
  longitude: -74.0060,
  user_id: 10
)

car12.picture.attach(io: file12, filename: "mario.jpg", content_type: "image/jpg")
car12.save!
