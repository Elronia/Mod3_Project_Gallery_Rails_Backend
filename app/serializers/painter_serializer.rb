class PainterSerializer < ActiveModel::Serializer
  attributes :id, :name, :years, :genre, :nationality, :bio, :painting_num
end
