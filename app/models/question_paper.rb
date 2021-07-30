class QuestionPaper < ApplicationRecord
   has_many :questions
   belongs_to :teacher
   has_many :students
   validates :name, presence: true
end
