class AddReferencesToQuestions < ActiveRecord::Migration[6.1]
  def change
    add_reference :questions, :question_paper, null: false, foreign_key: true
    add_reference :questions, :teacher, null: false, foreign_key: true
    add_reference :questions, :admin, null: false, foreign_key: true
  end
end
