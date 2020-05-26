class AddTotalPlayersToGameRecords < ActiveRecord::Migration[6.0]
  def change
    add_column :game_records, :total_players, :integer
  end
end
