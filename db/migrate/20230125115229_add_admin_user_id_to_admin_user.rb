class AddAdminUserIdToAdminUser < ActiveRecord::Migration[7.0]
  def change
    add_column :admin_users, :user_id, :integer
  end
end
