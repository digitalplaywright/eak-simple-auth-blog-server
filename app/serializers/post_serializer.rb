class PostSerializer < ActiveModel::Serializer
  attributes :id, :details, :title, :created_at

  has_many :comments

  has_one :user
end
