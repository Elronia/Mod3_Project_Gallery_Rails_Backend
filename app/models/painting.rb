class Painting < ApplicationRecord
  belongs_to :painter
  has_many :favorites, dependent: :destroy
  has_many :users, through: :favorites
end
