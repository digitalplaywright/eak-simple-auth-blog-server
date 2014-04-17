class PostSerializer < ActiveModel::Serializer
  attributes :id, :details, :title, :category, :created_at
end
