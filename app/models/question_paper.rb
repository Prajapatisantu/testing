class QuestionPaper < ApplicationRecord
   has_many :questions
   belongs_to :teacher
   has_many :students
end
