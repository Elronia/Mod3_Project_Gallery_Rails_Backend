class UsersController < ApplicationController
    def handle_login
        user = User.find_user(params[:username])
    end
end
