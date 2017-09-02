class CreateEstudiantes < ActiveRecord::Migration[5.1]
  def change
    create_table :estudiantes do |t|
      t.string :nombre
      t.string :nota_uno
      t.string :nota_dos
      t.string :definitiva

      t.timestamps
    end
  end
end
