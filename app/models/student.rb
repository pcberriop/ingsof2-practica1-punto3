class Student < ApplicationRecord
    validates :name, length: { maximum: 20}, presence: true
    validates :subject, presence: true, length: { maximum: 3}
    validates :grade, length: { maximum: 3}, presence: true
end
