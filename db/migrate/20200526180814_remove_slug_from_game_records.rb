class RemoveSlugFromGameRecords < ActiveRecord::Migration[6.0]
  def change
    remove_column :game_records, :slug, :string
  end
end
