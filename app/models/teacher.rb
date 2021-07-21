class Teacher < ApplicationRecord
   has_many :questions, as: :questionable
   has_many :question_papers
   accepts_nested_attributes_for :questions
end
