class User < ApplicationRecord
    has_secure_password
    has_many :game_records
    validates_uniqueness_of :username

    def get_score
        added_ranks = GameRecord.raw_score(self.id)
        total_played = GameRecord.total_played(self.id)
        return added_ranks / total_played
    end
end