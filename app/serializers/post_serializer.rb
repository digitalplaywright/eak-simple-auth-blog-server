class PostSerializer < ActiveModel::Serializer
  attributes :id, :details, :title, :created_at
end
