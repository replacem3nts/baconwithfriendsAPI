class UsersController < ApplicationController
    def create
        user = User.create(user_params)
        if user.valid?
            render json: user, status: 201
        else
            render json: {message: "Username Taken"}, status: 403
        end
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def login
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            render json: user
        else
            render json: {message: "Incorrect username or password"}
        end
    end

    def update
        render json: {message: "Update Feature not yet built out in backend. See users_controller.rb"}
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        render json: {message: "User destroyed."}
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end
end
