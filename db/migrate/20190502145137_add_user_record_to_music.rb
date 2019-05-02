class AddUserRecordToMusic < ActiveRecord::Migration[5.2]
  def change
    add_column :musics, :current_record_id, :integer
    add_column :questions, :current_record_id, :integer
  end
end
