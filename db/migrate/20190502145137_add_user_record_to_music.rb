class AddUserRecordToMusic < ActiveRecord::Migration[5.2]
  def change
    add_reference :musics, :current_record, foreign_key: true, type: :int
    add_reference :Questions, :current_record, foreign_key: true, type: :int
  end
end
