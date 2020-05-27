class GameRecordsController < ApplicationController
    
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
