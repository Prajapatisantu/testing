class Question < ApplicationRecord
   belongs_to :question_paper
   belongs_to :questionable, polymorphic: true
   has_many :answer
   validates :name, presence: true
end
