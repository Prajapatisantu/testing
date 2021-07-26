class ChangeAnswerToBeIntegerInAnswers < ActiveRecord::Migration[6.1]
  def change
    add_column :answers, :answer, :string
  end
end
