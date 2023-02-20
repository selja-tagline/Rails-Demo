class UserSerializer
  include JSONAPI::Serializer
  attributes :name, :age, :email
  has_many :posts
  has_many :articles
end
