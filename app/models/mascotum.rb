class Mascotum < ApplicationRecord
    validates :nombre, length: { maximum: 20}, presence: true
    validates :tipo, presence: true, length: { maximum: 6}, presence: true
    validates :raza, length: { maximum: 10}
end
