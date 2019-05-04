class RemoveAdminUserIdFromQuestion < ActiveRecord::Migration[5.2]
  def change
    remove_column :questions, :admin_user_id
  end
end
