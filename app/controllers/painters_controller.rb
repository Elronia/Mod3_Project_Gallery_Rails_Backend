class PaintersController < ApplicationController
    def index
        painters = Painter.alphabetize_painters
        render json: painters
    end
end
