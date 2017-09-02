class Car < ApplicationRecord
    validates :owner, length: { maximum: 20}, presence: true
    validates :license_plate, presence: true, length: { is: 6}, uniqueness:true
    validates :phone, length: { maximum: 10}, presence: true
    validates :model, presence: true, length: { maximum: 20}
end
