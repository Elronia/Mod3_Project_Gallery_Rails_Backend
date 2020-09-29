class FavoritesController < ApplicationController
    def index
        favorites = Favorite.all
        render json: favorites
    end

    def show
    end

    def create
    end

    def update
    end

    def delete
    end
end
