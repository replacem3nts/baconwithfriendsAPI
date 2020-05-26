class UsersController < ApplicationController
    def create
        user = User.create(user_params)
        if user.valid?
            # render json: user, status: 201
            render json: { user: UserSerializer.new(user) }, status: :created
        else
            render json: {message: "Username Taken"}, status: 403
        end
    end

    def show
        user = User.find(params[:id])
        render json: { user: UserSerializer.new(user) }
    end

    def login
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            render json: { user: UserSerializer.new(user) }
        else
            render json: {message: "Incorrect username or password"}
        end
    end

    def update
        render json: {message: "Update Feature not yet built out in backend. See users_controller.rb"}
    end

    def destroy
        user = User.find(params[:id])
        if user
            user.destroy
            render json: {message: "User destroyed."}
        else
            render json: {message: "User was not found in database."}
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end
end
