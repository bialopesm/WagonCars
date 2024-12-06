# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user1 = User.new(user_name: 'bialopesm', email: 'bia@exemple.com', password: 123456)
user1.save!

user2 = User.new(user_name: 'Nominoe-dev', email: 'nominoe@exemple.com', password: 123456)
user2.save!

user3 = User.new(user_name: 'canechiagui', email: 'guilherme@exemple.com', password: 123456)
user3.save!

user4 = User.new(user_name: 'Hurrem24', email: 'jana@exemple.com', password: 123456)
user4.save!
