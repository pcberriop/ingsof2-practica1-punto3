class Clothe < ApplicationRecord
    validates :code, length: { maximum: 20}, presence: true, uniqueness:true
    validates :model, presence: true, length: { maximum: 20}
    validates :color, length: { maximum: 10}
    validates :size, presence: true, length: { maximum: 20}
    validates :price, presence: true, length: { maximum: 20}
end
