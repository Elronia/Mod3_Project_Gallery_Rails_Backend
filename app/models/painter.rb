class Painter < ApplicationRecord
    has_many :paintings, dependent: :destroy
    # has_many :favorites, through: :paintings
end
