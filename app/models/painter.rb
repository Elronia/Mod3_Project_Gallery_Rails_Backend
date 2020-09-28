class Painter < ApplicationRecord
    has_many :paintings, dependent: :destroy
    # has_many :favorites, through: :paintings

    def self.alphabetize_painters
        Painter.order(name: :asc)
    end
end
