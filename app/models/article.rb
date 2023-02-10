class Article < ApplicationRecord
    resourcify
    has_many :comments, as: :commentable
    belongs_to :user
end
