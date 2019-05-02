class AddUserRecordToMusic < ActiveRecord::Migration[5.2]
  def change
    add_column :musics, :current_record, foreign_key: true, type: :int
    add_column :Questions, :current_record, foreign_key: true, type: :int
  end
end
