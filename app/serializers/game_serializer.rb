class GameSerializer < ActiveModel::Serializer
  attributes :id, :player_id_white, :player_id_black, :current_game_board

  belongs_to :user_id, :class_name => 'User', :foreign_key => 'player_id_white';
  belongs_to :user_id, :class_name => 'User', :foreign_key => 'player_id_black';
end
