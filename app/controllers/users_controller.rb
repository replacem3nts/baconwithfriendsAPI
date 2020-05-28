class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create, :login]

    def create
        user = User.create(user_params)
        if user.valid?
            token = encode_token({user_id: user.id})
            render json: { user: UserSerializer.new(user), token: token }, status: :created
        else
            render json: {message: "Username Taken"}, status: 403
        end
    end

    def login
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            token = encode_token({ user_id: user.id })
            render json: { user: UserSerializer.new(user), token: token }
        else
            render json: {message: "Incorrect username or password"}
        end
    end

    def update
        @user.update(username: params[:username])
        render json: { user: UserSerializer.new(@user) }
    end

    def destroy
        if @user
            @user.destroy
            render json: {message: "User destroyed."}
        else
            render json: {message: "User was not found in database."}
        end
    end

    def confirm_logged_in
        wristband = encode_token({user_id: @user.id})
        render json: { user: UserSerializer.new(@user), token: wristband }
    end

    private

    def user_params
        params.permit(:username, :password)
    end
end
