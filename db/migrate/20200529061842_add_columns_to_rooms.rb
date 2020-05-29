class AddColumnsToRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :rooms, :roomopen, :boolean, default: true
    add_column :rooms, :lastanswer, :string
    add_column :rooms, :actoranswer, :boolean, default: true
    add_column :rooms, :whoseturn, :integer, default: 0
    add_column :rooms, :lastrank, :integer, default: 0
  end
end
