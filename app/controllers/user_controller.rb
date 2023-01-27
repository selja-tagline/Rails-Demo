class UserController < ApplicationController
  def index
    @admin_users = AdminUser.all

  end

  def delete
  end

  def dashboard
    @admin_user = AdminUser.find_by_id(1)
 
    p "-------- You are on Dashboard -------------"
  end
end
