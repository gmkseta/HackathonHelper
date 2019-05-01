class AddNameToApi < ActiveRecord::Migration[5.2]
  def change
    add_column :apis, :name, :string
  end
end
