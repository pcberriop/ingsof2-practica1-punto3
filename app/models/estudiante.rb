class Estudiante < ApplicationRecord
    validates :nombre, length: { maximum: 20}, presence: true
    validates :nota_uno, presence: true, length: { is: 6}, uniqueness:true
    validates :nota_dos, length: { maximum: 10}, presence: true
    validates :model, presence: true, length: { maximum: 20}
end
