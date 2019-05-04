class AddAdminUserToQuestion < ActiveRecord::Migration[5.2]
  def change
    add_reference :questions, :admin_user
  end
end
