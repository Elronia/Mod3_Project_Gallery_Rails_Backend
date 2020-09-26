class User < ApplicationRecord
    has_many :favorites, dependent: :destroy
    has_many :paintings, through: :favorites
end
