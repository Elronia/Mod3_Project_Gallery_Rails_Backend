class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :paintings, through: :favorites
end
