class AddDefaultValueToUserAttributes < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :kill_point, :integer, :default => 0
  end
end
