class User < ApplicationRecord
    has_secure_password
    has_many :game_records
    validates_uniqueness_of :username


    def rating
        added_ranks = GameRecord.raw_score(self.id)
        total_played = GameRecord.total_played(self.id)
        if total_played == 0
            return 0
        else
            return added_ranks / total_played
        end
    end
end