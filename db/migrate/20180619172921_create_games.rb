class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :player_id_white
      t.integer :player_id_black
      t.timestamps
    end
  end
end
