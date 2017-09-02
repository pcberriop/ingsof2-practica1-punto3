class Estudiante < ApplicationRecord
    validates :nombre, length: { maximum: 20}, presence: true
    validates :nota_uno, presence: true, length: { maximum: 3}
    validates :nota_dos, length: { maximum: 3}, presence: true
    validates :definitiva, presence: true, length: { maximum: 3}
end
