class Question < ApplicationRecord
   belongs_to :question_paper
   belongs_to :questionable, polymorphic: true
   has_many :answer
   validates :title, :option1,:option2, :option3,:option4, presence: true
end
