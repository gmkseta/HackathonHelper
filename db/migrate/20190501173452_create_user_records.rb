class CreateUserRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :user_records do |t|
      t.string :user_key
      t.text :content
      t.references :button

      t.timestamps
    end
  end
end
