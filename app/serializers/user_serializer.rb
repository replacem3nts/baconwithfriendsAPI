class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :rating
end
