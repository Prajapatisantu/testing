class AddTeacherToQuestionPapers < ActiveRecord::Migration[6.1]
  def change
    add_reference :question_papers, :teacher, null: false, foreign_key: true
  end
end
