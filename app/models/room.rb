class Room < ApplicationRecord
    has_many :game_records
    has_many :users, through: :game_records
    # validates_uniqueness_of :name
end
