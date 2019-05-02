class AddBeforeRecordToUserRecord < ActiveRecord::Migration[5.2]
  def change
    add_reference :user_records, :before_record
  end
end
