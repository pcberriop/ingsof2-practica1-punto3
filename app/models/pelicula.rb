class Pelicula < ApplicationRecord
    validates :name, length: { maximum: 20}, presence: true
    validates :director, presence: true, length: { maximum: 20}
    validates :genero, length: { maximum: 20}, presence: true
    validates :año, presence: true, length: { maximum: 20}
    
end
    