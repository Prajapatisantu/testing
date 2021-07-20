class Question < ApplicationRecord
   belongs_to :question_paper
   belongs_to :teacher
   belongs_to :admin
   has_many :students
end
