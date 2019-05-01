class AddNameToKeyboard < ActiveRecord::Migration[5.2]
  def change
    add_column :keyboards, :name, :string
  end
end
