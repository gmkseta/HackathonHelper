class RenameKillCountToKillPoint < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :kill_count, :kill_point
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
