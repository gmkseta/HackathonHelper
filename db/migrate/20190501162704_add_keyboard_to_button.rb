class AddKeyboardToButton < ActiveRecord::Migration[5.2]
  def change
    add_reference :buttons, :keyboard, foreign_key: true
  end
end
