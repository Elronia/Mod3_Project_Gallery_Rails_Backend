class FavoritesController < ApplicationController
    def index
        favorites = Favorite.all
        render json: favorites
    end

    def show
    end

    def create
        new_favorite = Favorite.create(painting_id: params[:painting_id], user_id: params[:user_id])
        render json: new_favorite
    end

    def update
    end

    def delete
        painting = Painting.find_by(id:params[:id])
        favorite_to_delete = painting.favorites.last
        favorite_to_delete.destroy

        render json: favorite_to_delete
    end
end
