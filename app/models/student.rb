class Student < ApplicationRecord
    belongs_to :question_paper, optional: true
    has_many :question 
    after_create :assign_question_paper
    
    private
    def assign_question_paper
        @question = QuestionPaper.all.sample
        self.update(question_paper_id: @question.id)
    end
end
