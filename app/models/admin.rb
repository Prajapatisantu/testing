class Admin < ApplicationRecord
    has_many :questions, as: :questionable
    accepts_nested_attributes_for :questions
end
