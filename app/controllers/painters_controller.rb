class PaintersController < ApplicationController
    def index
        painters = Painter.all
        render json: painters
    end
end
