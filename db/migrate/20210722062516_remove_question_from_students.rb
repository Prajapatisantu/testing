class RemoveQuestionFromStudents < ActiveRecord::Migration[6.1]
  def change
    remove_reference :students, :question, null: false, foreign_key: true
  end
end
