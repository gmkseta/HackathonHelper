class CreateBamboos < ActiveRecord::Migration[5.2]
  def change
    create_table :bamboos do |t|
      t.text :content
      t.string :user_key
      t.references :user_record

      t.timestamps
    end
  end
end
