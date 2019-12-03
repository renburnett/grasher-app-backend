class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :budget, :fridges
end
