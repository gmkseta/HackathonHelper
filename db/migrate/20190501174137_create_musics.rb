class CreateMusics < ActiveRecord::Migration[5.2]
  def change
    create_table :musics do |t|
      t.string :content
      t.string :user_key
      t.timestamps
    end
  end
end
