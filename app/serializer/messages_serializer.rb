class MessageSerializer < ActiveModel::Serializer
  attributes :text, :created_at, :user_name
end
