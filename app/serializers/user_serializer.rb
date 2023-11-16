class UserSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :phone_number, :email, :profile_photo
end
