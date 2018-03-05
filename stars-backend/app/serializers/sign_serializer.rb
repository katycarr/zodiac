class SignSerializer < ActiveModel::Serializer
  attributes :id, :name, :start, :end, :description, :img_url
  has_many :users
end
