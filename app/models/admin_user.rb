class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  # validates :user_id, numericality: { only_integer: true}, presence: true, length: { is: 6 }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
end
