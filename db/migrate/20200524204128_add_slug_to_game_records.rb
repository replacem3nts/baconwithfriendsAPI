class AddSlugToGameRecords < ActiveRecord::Migration[6.0]
  def change
    add_column :game_records, :slug, :integer
  end
end
