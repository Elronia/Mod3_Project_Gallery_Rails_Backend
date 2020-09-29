class FavoritesController < ApplicationController
    def index
        favorites = Favorite.all
        render json: favorites
    end

    def show
    end

    def create
        new_favorite = Favorite.create(painting_id: params[:painting_id], user_id: params[:user_id])
        byebug
        render json: new_favorite
    end

    def update
    end

    def delete
    end
end
