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

file1 = URI.parse("https://thegarage.com.br/wp-content/uploads/2018/03/IMG_9791.jpg").open
car1 = Car.new(
  model: "Ford Mustang",
  year: 1970,
  category: "Classic",
  location: "New York",
  color: "Grey",
  rating: 5,
  price_day: 100,
  fuel: "Gasoline",
  number_of_seats: 3,
  description: "A powerful sports car with a sleek design.",
  latitude: 40.7128,
  longitude: -74.0060,
  user_id: 1
)

car1.picture.attach(io: file1, filename: "mustang.jpg", content_type: "image/jpg")
car1.save

file2 = URI.parse("https://roa.h-cdn.co/assets/16/21/1600x900/hd-aspect-1464016639-charger5002.jpg").open
car2 = Car.new(
  model: "Dodge Charger",
  year: 2020,
  category: "Classic",
  location: "Houston",
  color: "Green",
  rating: 5,
  price_day: 120,
  fuel: "Gasoline",
  number_of_seats: 4,
  description: "The american classic.",
  latitude: 29.7604,
  longitude: -95.3698,
  user_id: 1
)

car2.picture.attach(io: file2, filename: "dodge.jpg", content_type: "image/jpg")
car2.save

file3 = URI.parse("https://viabella.com.br/image/resize?w=1300&h=1300&force=1&q=90&src=userfiles/veiculos/6814609480127ee6833362510d320c46.jpg").open
car3 = Car.new(
  model: "Camaro SS",
  year: 1980,
  category: "Compact",
  location: "Rio de Janeiro",
  color: "Orange",
  rating: 5,
  price_day: 120,
  fuel: "Gasoline",
  number_of_seats: 4,
  description: "The best for your brazilian trip!",
  latitude: -22.908333,
  longitude: -43.196388,
  user_id: 2
)

car3.picture.attach(io: file3, filename: "camaro.jpg", content_type: "image/jpg")
car3.save

file4 = URI.parse("https://www.razaoautomovel.com/wp-content/uploads/2017/12/porsche-911-901-no-57-9-1400x788.jpg").open
car4 = Car.new(
  model: "Porsche 911",
  year: 1975,
  category: "Classic",
  location: "São Paulo",
  color: "Red",
  rating: 5,
  price_day: 120,
  fuel: "Gasoline",
  number_of_seats: 4,
  description: "The luxury car!",
  latitude: -23.533773,
  longitude: -46.625290,
  user_id: 2
)

car4.picture.attach(io: file4, filename: "porsche.jpg", content_type: "image/jpg")
car4.save

