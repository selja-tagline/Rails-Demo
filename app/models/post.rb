class Post < ApplicationRecord
    validates :name, presence: true
    belongs_to :user

    before_create { puts "Before create" }
    before_save { puts "Before save" }
    before_update { puts "Before update" }
    before_validation { puts "Before validation" }
end
