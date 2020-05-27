class AddRoomToGameRecords < ActiveRecord::Migration[6.0]
  def change
    add_column :game_records, :room, :integer
  end
end
