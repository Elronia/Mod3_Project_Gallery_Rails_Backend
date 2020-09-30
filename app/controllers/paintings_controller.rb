class PaintingsController < ApplicationController
    def index
        paintings = Painting.all
        render json: paintings
    end

    def show
        painting = Painting.find_by(id: params[:id])
        render json: painting
    end
end
