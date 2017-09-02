class Pet < ApplicationRecord
    validates :name, length: { maximum: 20}, presence: true
    validates :type, presence: true, length: { maximum: 3}
    validates :owner, length: { maximum: 3}, presence: true
end
