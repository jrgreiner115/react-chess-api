class GameSerializer < ActiveModel::Serializer
  attributes :id, :player_id_white, :player_id_black

  # belongs_to :user_id, :class_name => 'User', :foreign_key => 'player_id_white';
  # belongs_to :user_id, :class_name => 'User', :foreign_key => 'player_id_black';

  has_many :moves
end
