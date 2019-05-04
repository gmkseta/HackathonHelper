class AddUserToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_reference :questions, :user
  end
end
