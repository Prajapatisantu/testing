class Teacher < ApplicationRecord
   has_many :questions, as: :questionable
   has_many :question_papers
   validates :name, presence: true

end
