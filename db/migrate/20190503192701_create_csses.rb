class CreateCsses < ActiveRecord::Migration[5.2]
  def change
    create_table :csses do |t|
      t.string :name
      t.integer :width

      t.timestamps
    end
  end
end
