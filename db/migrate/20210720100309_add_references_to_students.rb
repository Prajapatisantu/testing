class AddReferencesToStudents < ActiveRecord::Migration[6.1]
  def change
    add_reference :students, :question_paper, foreign_key: true
    add_reference :students, :question, foreign_key: true
  end
end
