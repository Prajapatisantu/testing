class Teacher < ApplicationRecord
   validates :name, presence: true
   has_many :questions
   has_many :question_papers
end
