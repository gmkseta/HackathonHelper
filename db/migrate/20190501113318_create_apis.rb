class CreateApis < ActiveRecord::Migration[5.2]
  def change
    create_table :apis do |t|
      t.text :message
      t.references :keyboard, foreign_key: true

      t.timestamps
    end
  end
end
