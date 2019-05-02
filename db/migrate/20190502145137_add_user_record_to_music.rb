class AddUserRecordToMusic < ActiveRecord::Migration[5.2]
  def change
    add_reference :musics, :user_record, foreign_key: true, type: :int
    add_reference :Questions, :user_record, foreign_key: true, type: :int
  end
end
