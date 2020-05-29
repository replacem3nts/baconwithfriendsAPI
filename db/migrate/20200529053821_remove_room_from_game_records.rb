class RemoveRoomFromGameRecords < ActiveRecord::Migration[6.0]
  def change
    remove_column :game_records, :room, :integer
  end
end
