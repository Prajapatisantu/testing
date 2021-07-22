class RemoveAdminFromQuestions < ActiveRecord::Migration[6.1]
  def change
    remove_reference :questions, :admin, null: false, foreign_key: true
  end
end
