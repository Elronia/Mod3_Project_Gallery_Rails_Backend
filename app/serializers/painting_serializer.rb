class PaintingSerializer < ActiveModel::Serializer
  attributes :id, :name, :image,:year
  has_one :painter
  has_many :favorites
end
