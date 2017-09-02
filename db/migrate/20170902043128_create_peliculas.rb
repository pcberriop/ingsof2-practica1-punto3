class CreatePeliculas < ActiveRecord::Migration[5.1]
  def change
    create_table :peliculas do |t|
      t.string :name
      t.string :director
      t.string :genero
      t.string :año

      t.timestamps
    end
  end
end
