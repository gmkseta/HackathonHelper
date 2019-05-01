class CreateButtons < ActiveRecord::Migration[5.2]
  def change
    create_table :buttons do |t|
      t.string :content
      t.references :next_api
      t.timestamps
    end
  end
end
