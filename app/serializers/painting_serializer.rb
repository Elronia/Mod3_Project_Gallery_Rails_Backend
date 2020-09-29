class PaintingSerializer < ActiveModel::Serializer
  attributes :id, :name, :image
  has_one :painter
  has_many :favorites
end
