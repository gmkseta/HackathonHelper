class AddFlagToQuestion < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :flag, :integer, default: 0
  end
end
