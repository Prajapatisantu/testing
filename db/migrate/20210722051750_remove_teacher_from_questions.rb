class RemoveTeacherFromQuestions < ActiveRecord::Migration[6.1]
  def change
    remove_reference :questions, :teacher, null: false, foreign_key: true
  end
end
