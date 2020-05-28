class GameRecordsController < ApplicationController
    # skip_before_action :authorized
    
    def create
        record = GameRecord.create(game_record_params)
        if record
            render json: record
        else
            render json: { message: "Record NOT created." }
        end
    end


    def user_records 
        records = GameRecord.where(user_id: params[:id])
        if records
            render :json => records
        else
            render json: { message: "User has no Game Records." }
        end
    end

    def destroy
        record = GameRecord.find(params[:id])
        if record
            record.destroy
            render json: {message: "Record destroyed."}
        else
            render json: {message: "Record not found."}
        end
    end

    private

    def game_record_params
        params.permit(:user_id, :rank, :total_players, :room)
    end

end