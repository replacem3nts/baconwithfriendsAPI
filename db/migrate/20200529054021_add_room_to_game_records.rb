class AddRoomToGameRecords < ActiveRecord::Migration[6.0]
  def change
    add_reference :game_records, :room, null: false, foreign_key: true
  end
end
