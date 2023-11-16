class EmailCommunicationSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :email_detail
end
