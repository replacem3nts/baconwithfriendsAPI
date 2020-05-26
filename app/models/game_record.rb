class GameRecord < ApplicationRecord
    belongs_to :user
    scope :raw_score, lambda {|user_id| where(['user_id = ?', user_id]).sum('rank')}
    scope :total_played, lambda {|user_id| where(['user_id = ?', user_id]).sum('total_players')}

end
