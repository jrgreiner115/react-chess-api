class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :wins, :losses

  has_many :white_games, :class_name => 'Game', foreign_key: :'player_id_white'
 has_many :black_games, :class_name => 'Game', foreign_key: :'player_id_black'
end
