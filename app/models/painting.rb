class Painting < ApplicationRecord
  belongs_to :painter
  has_many :favorites
  has_many :users, through: :favorites
end
