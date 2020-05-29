class RoomSerializer < ActiveModel::Serializer
    attributes :id, :name, :slug, :roomopen, :lastanswer, :actoranswer, :whoseturn, :lastrank
    has_many :users
end
  