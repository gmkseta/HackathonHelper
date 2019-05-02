class AddUserRecordToMusic < ActiveRecord::Migration[5.2]
  def change
    add_reference :musics, :user_record, foreign_key: true
    add_reference :Questions, :user_record, foreign_key: true
  end
end
