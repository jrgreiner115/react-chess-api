# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


joe = User.create(name: "JOE", password:"ALSOJOE",wins: 0,losses:0)
ryan = User.create(name: "RYAN", password:"ALSOJOE",wins: 0,losses:0)
humzah = User.create(name: "HUMZAH", password:"ALSOJOE",wins: 0,losses:0)
mike = User.create(name: "MIKE", password:"ALSOJOE",wins: 0,losses:0)

game1 = Game.create(player_id_white: 1, player_id_black: 2, current_game_board: "APPLESAUCE")
game2 = Game.create(player_id_white: 3, player_id_black: 4, current_game_board: "APPLESAUCE")
