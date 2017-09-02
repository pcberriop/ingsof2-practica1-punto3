class CreateMascota < ActiveRecord::Migration[5.1]
  def change
    create_table :mascota do |t|
      t.string :nombre
      t.string :tipo
      t.string :raza

      t.timestamps
    end
  end
end
