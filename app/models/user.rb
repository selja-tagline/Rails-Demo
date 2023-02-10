class User < ApplicationRecord
  rolify :before_add => :before_add_method
  after_create :assign_default_role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  has_many :posts
  has_many :articles

  def before_add_method(role)
    p ":::::: called before_add_method ::::::"
  end

  def assign_default_role
    p ":::::: called assign_default_role ::::::"
    self.add_role(:newuser) if self.roles.blank?
  end
end