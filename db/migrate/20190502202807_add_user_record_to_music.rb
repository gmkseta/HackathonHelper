class AddUserRecordToMusic < ActiveRecord::Migration[5.2]
  def change
    add_reference :musics, :user_record
    add_reference :questions, :user_record
  end
end
