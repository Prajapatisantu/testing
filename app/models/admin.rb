class Admin < ApplicationRecord
    # validates :name, presence: true
    has_many :questions
end
