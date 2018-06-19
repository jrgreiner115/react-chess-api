class MoveSerializer < ActiveModel::Serializer
  attributes :id, :game_id, :previous_position, :new_position

  belongs_to :game
end
