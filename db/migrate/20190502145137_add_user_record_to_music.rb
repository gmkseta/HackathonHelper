class AddUserRecordToMusic < ActiveRecord::Migration[5.2]
  def change
    add_column :musics, :current_record, :integer
    add_column :questions, :current_record, :integer
  end
end
