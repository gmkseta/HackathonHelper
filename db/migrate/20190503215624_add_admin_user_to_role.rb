class AddAdminUserToRole < ActiveRecord::Migration[5.2]
  def change
    add_column :admin_users, :role, :integer, default: 0
    add_column :admin_users, :kill_count, :integer, default: 0
  end
end
