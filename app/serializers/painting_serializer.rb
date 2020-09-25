class PaintingSerializer < ActiveModel::Serializer
  attributes :id, :name, :image
  has_one :painter
end
