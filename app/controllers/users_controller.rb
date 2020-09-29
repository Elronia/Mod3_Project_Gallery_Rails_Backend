class UsersController < ApplicationController
    def handle_login
        user = User.find_user(params[:username])
        render json: user
    end

    def show
        user = User.find_user(params[:username]) 
        render json: user
    end
end
