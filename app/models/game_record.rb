class GameRecord < ApplicationRecord
    belongs_to :user
    scope :raw_score, lambda {|user_id| where(['user_id = ?', user_id]).sum('rank')}
    scope :total_played, lambda {|user_id| where(['user_id = ?', user_id]).sum('total_players')}

    def create
        record = GameRecord.create(game_record_params)
        if record
            render json: {record}
        else
            render json {message: "ERROR: Record NOT created."}
        end
    end

    private

    def game_record_params
        params.require(:game_record).permit(:user_id, :rank, :total_players, :room)
    end

end
