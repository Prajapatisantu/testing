class Student < ApplicationRecord
    validates :name, presence: true
    belongs_to :question_paper
    belongs_to :question
end
