class PaintersController < ApplicationController
    def index
        painters = Painter.alphabetize_painters
        render json: painters
    end

    def show
        painter = Painter.find_by(id: params[:id])
        render json: painter
    end
end
