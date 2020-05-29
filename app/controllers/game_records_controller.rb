class GameRecordsController < ApplicationController
    # skip_before_action :authorized
    
    def create
        record = GameRecord.create(params.permit(:user_id, :room_id))
        if record.valid?
            render json: record
        else
            render json: { message: "Record NOT created. User or Room may not exist" }
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

    def update
        record = GameRecord.find(params[:id])
        if record
            record.update(game_record_params)
            render json: record
        else
            render json: {message: "Game Record not found."}
        end
    end

    private

    def game_record_params
        params.permit(:user_id, :rank, :total_players, :room_id)
    end

end