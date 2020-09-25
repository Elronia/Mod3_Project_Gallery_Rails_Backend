class Painter < ApplicationRecord
    has_many :paintings
    # has_many :favorites, through: :paintings
end
