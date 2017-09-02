class RoomNetwork < ApplicationRecord
    validates :name, length: { maximum: 20}, presence: true
    validates :model, presence: true, length: { maximum: 20}
    validates :code, length: { is: 10}, uniqueness:true
    validates :mandated , presence: true, length: { maximum: 20}
end
