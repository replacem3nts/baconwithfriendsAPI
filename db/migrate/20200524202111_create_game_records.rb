class CreateGameRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :game_records do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.integer :rank
    end
  end
end
