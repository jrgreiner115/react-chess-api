class Game < ApplicationRecord
  belongs_to :user_id, :class_name => 'User', :foreign_key => 'player_id_white';
  belongs_to :user_id, :class_name => 'User', :foreign_key => 'player_id_black';
end
