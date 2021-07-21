class Student < ApplicationRecord
    belongs_to :question_paper
    belongs_to :question
end
